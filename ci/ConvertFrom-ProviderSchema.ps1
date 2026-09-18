function ConvertFrom-ProviderSchema {
    <#
    .SYNOPSIS
        Converts a CloudFormation Resource Provider Schema (JSON Schema format) into the
        legacy resource spec structure expected by Convert-SpecToFunction.

    .DESCRIPTION
        Takes a parsed JSON Schema object (from the new per-resource schema files) and
        transforms it into the same shape that the old monolithic CloudFormation Resource
        Specification used. This allows Convert-SpecToFunction to work unchanged.

        Returns a hashtable with:
          - ResourceTypes: hashtable of resource objects keyed by type name
          - PropertyTypes: hashtable of property type objects keyed by fully-qualified name

    .PARAMETER SchemaObject
        The parsed JSON object from a resource provider schema file.

    .FUNCTIONALITY
        Vaporshell
    #>

    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [Object]
        $SchemaObject
    )

    process {
        $typeName = $SchemaObject.typeName  # e.g. AWS::S3::Bucket
        $shortService = ($typeName -replace '^AWS::' -replace '::.*$')  # e.g. S3

        # Build documentation URL from typeName
        $docSlug = ($typeName -replace '::', '-').ToLower()
        $documentation = "http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/$docSlug.html"

        # Determine which properties are required.
        # NOTE: the Resource Provider Schema's "required" list reflects the resource
        # provider / registry contract (what the create handler needs), NOT what is
        # settable/required in a CloudFormation *template*. The legacy monolithic
        # CloudFormation Resource Specification (which the generated functions were
        # historically built from) had a much narrower notion of required template
        # inputs. Treating every provider-schema "required" field as a PowerShell
        # mandatory parameter both (a) diverges from the previous behaviour and
        # (b) causes generated functions to block on an interactive prompt when a
        # caller legitimately omits the value. We therefore do NOT propagate the
        # provider-schema "required" list into the generated parameters — callers
        # (or higher-level wrappers such as ITV.PS.Cfn) enforce their own required
        # inputs. Retained here (unused) for reference/diagnostics only.
        $requiredProps = @()

        # readOnlyProperties are output-only attributes (surfaced via Fn::GetAtt),
        # not settable template inputs. The legacy spec kept these in a separate
        # "Attributes" section and never generated parameters for them. Collect the
        # leaf property names so they can be excluded from the generated parameters.
        $readOnlyProps = @()
        if ($SchemaObject.readOnlyProperties) {
            $readOnlyProps = @(
                foreach ($ro in $SchemaObject.readOnlyProperties) {
                    # entries look like '/properties/StackId' or nested
                    # '/properties/Foo/Bar' — take the first path segment after
                    # /properties/ so nested read-only leaves still hide their
                    # top-level parameter only when the whole property is read-only.
                    if ($ro -match '^/properties/([^/]+)$') {
                        $Matches[1]
                    }
                }
            )
        }

        # Helper: resolve a $ref to a definition name
        # e.g. "#/definitions/AccelerateConfiguration" -> "AccelerateConfiguration"
        function Get-DefinitionName {
            param([string]$Ref)
            if ($Ref -match '#/definitions/(.+)$') {
                return $Matches[1]
            }
            return $null
        }

        # Helper: determine if a definition represents the standard AWS Tag structure.
        # Only the exact name 'Tag' is treated as a tag. Other Key/Value definitions
        # (like TagsEntry, TagsMap) are legitimate property types.
        function Test-IsTagDefinition {
            param([string]$DefName, [object]$DefObj)
            if ($DefName -eq 'Tag') { return $true }
            return $false
        }

        # Helper: resolve a definition that is a simple scalar alias to its legacy
        # PrimitiveType. Many resource schemas define named string/number aliases
        # (e.g. Arn = { type: string }, PlatformType = { type: string }) and then
        # $ref them from properties. These are NOT complex Vaporshell property types
        # — they are primitives. Returns the primitive type name (e.g. 'String') when
        # the definition is such a scalar alias, otherwise $null (meaning it is a
        # genuine complex type that gets its own Add-VS... function).
        function Resolve-PrimitiveDefinition {
            param([string]$DefName, [object]$Definitions)

            if (-not $Definitions -or -not $DefName) { return $null }
            $defObj = $Definitions.$DefName
            if (-not $defObj) { return $null }

            # A definition with properties, or a union (oneOf/anyOf) that carries
            # properties, is a genuine complex type — not a primitive.
            if ($defObj.properties) { return $null }
            if ($defObj.oneOf -or $defObj.anyOf) {
                $variants = if ($defObj.oneOf) { $defObj.oneOf } else { $defObj.anyOf }
                foreach ($variant in $variants) {
                    if ($variant.properties) { return $null }
                }
            }

            # A scalar 'type' with no properties is a primitive alias (this also
            # covers string enums, which are still strings).
            if ($defObj.type) {
                $t = if ($defObj.type -is [array]) { $defObj.type[0] } else { $defObj.type }
                switch ($t) {
                    'string' { return 'String' }
                    'integer' { return 'Integer' }
                    'number' { return 'Double' }
                    'boolean' { return 'Boolean' }
                    default { return $null }
                }
            }

            return $null
        }

        # Helper: convert a JSON Schema property into legacy spec property format
        function Convert-PropertyToLegacy {
            param(
                [string]$PropName,
                [object]$PropObj,
                [bool]$IsRequired,
                [object]$Definitions
            )

            $legacy = [ordered]@{
                Documentation = $documentation
                Required      = if ($IsRequired) { 'True' } else { 'False' }
            }

            # Case 1: $ref to a definition (complex type or scalar alias)
            if ($PropObj.'$ref') {
                $defName = Get-DefinitionName $PropObj.'$ref'
                if ($defName) {
                    if ($Definitions -and $Definitions.$defName) {
                        if (Test-IsTagDefinition -DefName $defName -DefObj $Definitions.$defName) {
                            $legacy['ItemType'] = 'Tag'
                            $legacy['Type'] = 'List'
                        } elseif ($primitive = Resolve-PrimitiveDefinition -DefName $defName -Definitions $Definitions) {
                            # $ref points at a scalar alias (e.g. Arn = { type: string }) —
                            # treat it as a primitive, not a complex Vaporshell type.
                            $legacy['PrimitiveType'] = $primitive
                        } else {
                            $legacy['Type'] = $defName
                        }
                    } else {
                        $legacy['Type'] = $defName
                    }
                }
                return [PSCustomObject]$legacy
            }

            # Case 2: array type
            if ($PropObj.type -eq 'array') {
                $legacy['Type'] = 'List'
                if ($PropObj.items) {
                    if ($PropObj.items.'$ref') {
                        $defName = Get-DefinitionName $PropObj.items.'$ref'
                        if ($defName) {
                            if ($Definitions -and $Definitions.$defName -and
                                (Test-IsTagDefinition -DefName $defName -DefObj $Definitions.$defName)) {
                                $legacy['ItemType'] = 'Tag'
                            } elseif ($primitive = Resolve-PrimitiveDefinition -DefName $defName -Definitions $Definitions) {
                                # Array items $ref a scalar alias (e.g. PlatformType = { type: string })
                                # — a list of primitives, not a list of complex types.
                                $legacy['PrimitiveItemType'] = $primitive
                            } else {
                                $legacy['ItemType'] = $defName
                            }
                        }
                    } elseif ($PropObj.items.type) {
                        # Array of primitives
                        $legacy['PrimitiveItemType'] = Convert-JsonTypeToPrimitive $PropObj.items.type
                    }
                }
                return [PSCustomObject]$legacy
            }

            # Case 3: object / map. Note the "type: object" keyword is often omitted
            # when a schema uses additionalProperties or patternProperties to describe
            # a free-form map (e.g. Glue UsageProfile ProfileConfiguration.JobConfiguration,
            # which is `{ patternProperties: { "^.+$": { $ref: ConfigurationObject } } }`
            # with no `type`). Treat the presence of additionalProperties /
            # patternProperties as a map regardless of the type keyword.
            if ($PropObj.additionalProperties -or $PropObj.patternProperties) {
                # Determine the map's value schema (additionalProperties, or the single
                # patternProperties entry). If the values are a COMPLEX ($ref to an
                # object) type, the legacy spec left these as unrestricted objects
                # rather than strict [Hashtable] (Type = Map renders as
                # [System.Collections.Hashtable], which rejects a PSCustomObject value
                # such as a Vaporshell.Resource.* property object). Emit PrimitiveType
                # 'Json' for maps of complex values so they accept a hashtable OR a
                # PSCustomObject; keep strict 'Map' only for simple/primitive maps.
                $valueSchema = $null
                if ($PropObj.additionalProperties -and $PropObj.additionalProperties -isnot [bool]) {
                    $valueSchema = $PropObj.additionalProperties
                } elseif ($PropObj.patternProperties) {
                    $pp = @($PropObj.patternProperties.PSObject.Properties)
                    if ($pp.Count -gt 0) { $valueSchema = $pp[0].Value }
                }
                $valueIsComplex = $false
                if ($valueSchema) {
                    if ($valueSchema.'$ref') {
                        $vDef = Get-DefinitionName $valueSchema.'$ref'
                        if ($vDef -and -not (Resolve-PrimitiveDefinition -DefName $vDef -Definitions $Definitions)) {
                            $valueIsComplex = $true
                        }
                    } elseif ($valueSchema.type -eq 'object' -or $valueSchema.properties) {
                        $valueIsComplex = $true
                    }
                }
                if ($valueIsComplex) {
                    $legacy['PrimitiveType'] = 'Json'
                } else {
                    $legacy['Type'] = 'Map'
                }
                return [PSCustomObject]$legacy
            }
            if ($PropObj.type -eq 'object') {
                if ($PropObj.properties) {
                    # Inline object with properties — treat as a named type reference
                    # The extraction logic will create a property type for this
                    $legacy['Type'] = $PropName
                } else {
                    # Object with no defined properties
                    $legacy['PrimitiveType'] = 'Json'
                }
                return [PSCustomObject]$legacy
            }

            # Case 4: primitive types
            if ($PropObj.type) {
                $legacy['PrimitiveType'] = Convert-JsonTypeToPrimitive $PropObj.type
                return [PSCustomObject]$legacy
            }

            # Case 5: oneOf/anyOf — pick the most structured/typed variant.
            # CloudFormation schemas frequently express a property as a union such as
            #   oneOf: [ { type: array, items: { $ref: X } }, { type: object } ]
            # (e.g. DynamoDB Table.KeySchema). The richest variant (array of a complex
            # type, or a $ref, or an inline object) is the one that carries type
            # information; the bare/loose variant (a lone { type: object } with no
            # properties, or a plain string) is the fallback. Prefer the structured
            # variant by recursively converting it, rather than collapsing to String.
            if ($PropObj.oneOf -or $PropObj.anyOf) {
                $variants = @(if ($PropObj.oneOf) { $PropObj.oneOf } else { $PropObj.anyOf })

                # 1. Prefer an array variant (list of $ref or primitives).
                foreach ($variant in $variants) {
                    if ($variant.type -eq 'array' -and $variant.items) {
                        return Convert-PropertyToLegacy -PropName $PropName -PropObj $variant `
                            -IsRequired $IsRequired -Definitions $Definitions
                    }
                }
                # 2. Then a direct $ref variant (complex type or scalar alias).
                foreach ($variant in $variants) {
                    if ($variant.'$ref') {
                        return Convert-PropertyToLegacy -PropName $PropName -PropObj $variant `
                            -IsRequired $IsRequired -Definitions $Definitions
                    }
                }
                # 3. Then an object variant that actually defines structure
                #    (inline properties, a map, or patternProperties).
                foreach ($variant in $variants) {
                    if ($variant.type -eq 'object' -and
                        ($variant.properties -or $variant.additionalProperties -or $variant.patternProperties)) {
                        return Convert-PropertyToLegacy -PropName $PropName -PropObj $variant `
                            -IsRequired $IsRequired -Definitions $Definitions
                    }
                }
                # 4. Then any primitive-typed variant.
                foreach ($variant in $variants) {
                    if ($variant.type -and $variant.type -ne 'object' -and $variant.type -ne 'array') {
                        $legacy['PrimitiveType'] = Convert-JsonTypeToPrimitive $variant.type
                        return [PSCustomObject]$legacy
                    }
                }
                # 5. A lone { type: object } with no structure is an open map — treat
                #    as Json so it accepts a hashtable/PSCustomObject, not String.
                foreach ($variant in $variants) {
                    if ($variant.type -eq 'object') {
                        $legacy['PrimitiveType'] = 'Json'
                        return [PSCustomObject]$legacy
                    }
                }
                # Fall back to string if we truly cannot determine a type.
                $legacy['PrimitiveType'] = 'String'
                return [PSCustomObject]$legacy
            }

            # An empty schema ({} — no type, $ref, properties, items, oneOf/anyOf,
            # additionalProperties or patternProperties) means "any JSON value"
            # (e.g. QBusiness DataSource.Configuration = {}). The legacy spec exposed
            # these as unrestricted objects; emit PrimitiveType 'Json' so the parameter
            # accepts a hashtable / PSCustomObject / string rather than String-only.
            $meaningfulKeys = @('type', '$ref', 'properties', 'items', 'oneOf', 'anyOf', 'additionalProperties', 'patternProperties')
            $hasMeaningful = $false
            foreach ($k in $meaningfulKeys) {
                if ($null -ne $PropObj.$k) { $hasMeaningful = $true; break }
            }
            if (-not $hasMeaningful) {
                $legacy['PrimitiveType'] = 'Json'
                return [PSCustomObject]$legacy
            }

            # Fallback: treat as String
            $legacy['PrimitiveType'] = 'String'
            return [PSCustomObject]$legacy
        }

        function Convert-JsonTypeToPrimitive {
            param([object]$JsonType)
            # $JsonType can be a string or array
            $t = if ($JsonType -is [array]) { $JsonType[0] } else { $JsonType }
            switch ($t) {
                'string' { return 'String' }
                'integer' { return 'Integer' }
                'number' { return 'Double' }
                'boolean' { return 'Boolean' }
                'object' { return 'Json' }
                'array' { return 'Json' }
                default { return 'String' }
            }
        }

        # Build resource properties in legacy format
        $legacyProperties = [ordered]@{}
        if ($SchemaObject.properties) {
            foreach ($prop in $SchemaObject.properties.PSObject.Properties) {
                # Skip read-only (Fn::GetAtt-only) attributes — they are not settable
                # template inputs and must not become function parameters.
                if ($prop.Name -in $readOnlyProps) {
                    continue
                }
                $isRequired = $prop.Name -in $requiredProps
                $legacyProperties[$prop.Name] = Convert-PropertyToLegacy `
                    -PropName $prop.Name `
                    -PropObj $prop.Value `
                    -IsRequired $isRequired `
                    -Definitions $SchemaObject.definitions
            }
        }

        # Build the resource entry matching old spec format
        $resourceEntry = [PSCustomObject]@{
            Name  = $typeName
            Value = [PSCustomObject]@{
                Documentation = $documentation
                Properties    = [PSCustomObject]$legacyProperties
            }
        }

        # Build property type entries from definitions AND inline objects
        $propertyTypes = @{}

        # Recursive function to extract property types from definitions,
        # including inline object definitions nested within other definitions
        function Extract-PropertyTypes {
            param(
                [string]$ParentTypeName,
                [object]$Definitions,
                [hashtable]$PropertyTypesRef
            )

            if (-not $Definitions) { return }

            foreach ($def in $Definitions.PSObject.Properties) {
                $defName = $def.Name
                $defObj = $def.Value

                # Skip Tag — it's handled specially
                if (Test-IsTagDefinition -DefName $defName -DefObj $defObj) {
                    continue
                }

                # Handle oneOf/anyOf definitions by flattening all variant properties
                # into a single property type (each property becomes optional).
                # This covers union types like TargetConfiguration, McpTargetConfiguration, etc.
                if (-not $defObj.properties -and ($defObj.oneOf -or $defObj.anyOf)) {
                    $variants = if ($defObj.oneOf) { $defObj.oneOf } else { $defObj.anyOf }
                    $qualifiedName = "$ParentTypeName.$defName"

                    if ($PropertyTypesRef.ContainsKey($qualifiedName)) {
                        continue
                    }

                    $unionProperties = [ordered]@{}
                    foreach ($variant in $variants) {
                        if ($variant.properties) {
                            foreach ($vProp in $variant.properties.PSObject.Properties) {
                                if (-not $unionProperties.Contains($vProp.Name)) {
                                    $unionProperties[$vProp.Name] = Convert-PropertyToLegacy `
                                        -PropName $vProp.Name `
                                        -PropObj $vProp.Value `
                                        -IsRequired $false `
                                        -Definitions $Definitions
                                }
                            }
                        }
                    }

                    if ($unionProperties.Count -gt 0) {
                        $propTypeEntry = [PSCustomObject]@{
                            Name  = $qualifiedName
                            Value = [PSCustomObject]@{
                                Documentation = $documentation
                                Properties    = [PSCustomObject]$unionProperties
                            }
                        }
                        $PropertyTypesRef[$qualifiedName] = $propTypeEntry
                    }
                    continue
                }

                # Skip definitions that don't have properties (e.g. simple enums/strings)
                if (-not $defObj.properties) {
                    continue
                }

                $qualifiedName = "$ParentTypeName.$defName"

                # Skip if already processed
                if ($PropertyTypesRef.ContainsKey($qualifiedName)) {
                    continue
                }

                # Determine required properties for this definition
                $defRequired = @()
                if ($defObj.required) {
                    $defRequired = @($defObj.required)
                }

                $defProperties = [ordered]@{}
                foreach ($defProp in $defObj.properties.PSObject.Properties) {
                    $isReq = $defProp.Name -in $defRequired
                    $propValue = $defProp.Value

                    # Check if this property is an inline object with its own properties
                    # (not a $ref, and type=object with properties defined inline)
                    if ($propValue.type -eq 'object' -and $propValue.properties -and
                        -not $propValue.additionalProperties -and -not $propValue.patternProperties) {
                        # This is an inline complex type — extract it as a named property type
                        $inlineDefName = $defProp.Name
                        $inlineQualifiedName = "$ParentTypeName.$inlineDefName"

                        if (-not $PropertyTypesRef.ContainsKey($inlineQualifiedName)) {
                            $inlineRequired = @()
                            if ($propValue.required) {
                                $inlineRequired = @($propValue.required)
                            }

                            $inlineProperties = [ordered]@{}
                            foreach ($inlineProp in $propValue.properties.PSObject.Properties) {
                                $inlineIsReq = $inlineProp.Name -in $inlineRequired
                                $inlineProperties[$inlineProp.Name] = Convert-PropertyToLegacy `
                                    -PropName $inlineProp.Name `
                                    -PropObj $inlineProp.Value `
                                    -IsRequired $inlineIsReq `
                                    -Definitions $Definitions
                            }

                            $inlinePropTypeEntry = [PSCustomObject]@{
                                Name  = $inlineQualifiedName
                                Value = [PSCustomObject]@{
                                    Documentation = $documentation
                                    Properties    = [PSCustomObject]$inlineProperties
                                }
                            }
                            $PropertyTypesRef[$inlineQualifiedName] = $inlinePropTypeEntry

                            # Recursively check the inline object for further nested objects
                            $syntheticDef = [PSCustomObject]@{
                                $inlineDefName = $propValue
                            }
                            # Don't recurse further for now — inline objects rarely nest more than one level
                        }

                        # Map this property as a reference to the extracted type
                        $defProperties[$defProp.Name] = Convert-PropertyToLegacy `
                            -PropName $defProp.Name `
                            -PropObj ([PSCustomObject]@{ '$ref' = "#/definitions/$inlineDefName" }) `
                            -IsRequired $isReq `
                            -Definitions $Definitions
                    } else {
                        $defProperties[$defProp.Name] = Convert-PropertyToLegacy `
                            -PropName $defProp.Name `
                            -PropObj $propValue `
                            -IsRequired $isReq `
                            -Definitions $Definitions
                    }
                }

                $propTypeEntry = [PSCustomObject]@{
                    Name  = $qualifiedName
                    Value = [PSCustomObject]@{
                        Documentation = $documentation
                        Properties    = [PSCustomObject]$defProperties
                    }
                }

                $PropertyTypesRef[$qualifiedName] = $propTypeEntry
            }
        }

        if ($SchemaObject.definitions) {
            Extract-PropertyTypes -ParentTypeName $typeName -Definitions $SchemaObject.definitions -PropertyTypesRef $propertyTypes
        }

        # Also extract inline objects from top-level resource properties
        if ($SchemaObject.properties) {
            foreach ($prop in $SchemaObject.properties.PSObject.Properties) {
                # Skip read-only attributes — they never become settable parameters,
                # so they must not spawn a property-type builder either.
                if ($prop.Name -in $readOnlyProps) {
                    continue
                }
                $propValue = $prop.Value
                if ($propValue.type -eq 'object' -and $propValue.properties -and
                    -not $propValue.additionalProperties -and -not $propValue.patternProperties) {
                    # Inline object at resource level — extract as a property type
                    $inlineDefName = $prop.Name
                    $inlineQualifiedName = "$typeName.$inlineDefName"

                    if (-not $propertyTypes.ContainsKey($inlineQualifiedName)) {
                        $inlineRequired = @()
                        if ($propValue.required) {
                            $inlineRequired = @($propValue.required)
                        }

                        $inlineProperties = [ordered]@{}
                        foreach ($inlineProp in $propValue.properties.PSObject.Properties) {
                            $inlineIsReq = $inlineProp.Name -in $inlineRequired
                            $inlineProperties[$inlineProp.Name] = Convert-PropertyToLegacy `
                                -PropName $inlineProp.Name `
                                -PropObj $inlineProp.Value `
                                -IsRequired $inlineIsReq `
                                -Definitions $SchemaObject.definitions
                        }

                        $inlinePropTypeEntry = [PSCustomObject]@{
                            Name  = $inlineQualifiedName
                            Value = [PSCustomObject]@{
                                Documentation = $documentation
                                Properties    = [PSCustomObject]$inlineProperties
                            }
                        }
                        $propertyTypes[$inlineQualifiedName] = $inlinePropTypeEntry
                    }
                }
            }
        }

        # Return both the resource and its property types
        [PSCustomObject]@{
            ResourceType  = $resourceEntry
            PropertyTypes = $propertyTypes
        }
    }
}
