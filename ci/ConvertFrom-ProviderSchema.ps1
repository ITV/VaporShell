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

        # Determine which properties are required
        $requiredProps = @()
        if ($SchemaObject.required) {
            $requiredProps = @($SchemaObject.required)
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

            # Case 1: $ref to a definition (complex type)
            if ($PropObj.'$ref') {
                $defName = Get-DefinitionName $PropObj.'$ref'
                if ($defName) {
                    if ($Definitions -and $Definitions.$defName) {
                        if (Test-IsTagDefinition -DefName $defName -DefObj $Definitions.$defName) {
                            $legacy['ItemType'] = 'Tag'
                            $legacy['Type'] = 'List'
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

            # Case 3: object type (Map or inline complex type)
            if ($PropObj.type -eq 'object') {
                if ($PropObj.additionalProperties -or $PropObj.patternProperties) {
                    $legacy['Type'] = 'Map'
                } elseif ($PropObj.properties) {
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

            # Case 5: oneOf/anyOf — try to determine best type
            if ($PropObj.oneOf -or $PropObj.anyOf) {
                $variants = if ($PropObj.oneOf) { $PropObj.oneOf } else { $PropObj.anyOf }
                # Look for a $ref or primitive in the variants
                foreach ($variant in $variants) {
                    if ($variant.'$ref') {
                        $defName = Get-DefinitionName $variant.'$ref'
                        if ($defName) {
                            $legacy['Type'] = $defName
                            return [PSCustomObject]$legacy
                        }
                    }
                }
                # Fall back to string if we have mixed types
                $legacy['PrimitiveType'] = 'String'
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
