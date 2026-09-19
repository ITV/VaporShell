Describe 'ConvertFrom-ProviderSchema' {

    BeforeAll {
        # Source the function under test and its dependencies
        . "$PSScriptRoot/../../ci/ConvertFrom-ProviderSchema.ps1"
    }

    Context 'Basic resource with primitive properties' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::S3::Bucket'
                properties  = [PSCustomObject]@{
                    BucketName        = [PSCustomObject]@{
                        type        = 'string'
                        description = 'The name of the bucket'
                    }
                    VersioningEnabled = [PSCustomObject]@{
                        type = 'boolean'
                    }
                }
                required    = @('BucketName')
                definitions = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Returns a ResourceType with the correct name' {
            $result.ResourceType.Name | Should -Be 'AWS::S3::Bucket'
        }

        It 'Does not propagate provider-schema required into resource parameters' {
            # The Resource Provider Schema "required" list reflects the provider/registry
            # contract, not CloudFormation template-input requirements. Propagating it made
            # generated functions mandatory (and interactively prompt) for values that the
            # legacy spec never required — e.g. StackName on AWS::CloudFormation::Stack.
            # Resource-level properties are therefore always emitted as Required 'False'.
            $result.ResourceType.Value.Properties.BucketName.Required | Should -Be 'False'
        }

        It 'Marks non-required properties as Required False' {
            $result.ResourceType.Value.Properties.VersioningEnabled.Required | Should -Be 'False'
        }

        It 'Maps string type to PrimitiveType String' {
            $result.ResourceType.Value.Properties.BucketName.PrimitiveType | Should -Be 'String'
        }

        It 'Maps boolean type to PrimitiveType Boolean' {
            $result.ResourceType.Value.Properties.VersioningEnabled.PrimitiveType | Should -Be 'Boolean'
        }

        It 'Includes Documentation URL' {
            $result.ResourceType.Value.Documentation | Should -Match 'docs.aws.amazon.com'
        }
    }

    Context 'Resource with integer and number properties' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::AutoScaling::Group'
                properties  = [PSCustomObject]@{
                    MaxSize         = [PSCustomObject]@{
                        type = 'integer'
                    }
                    DesiredCapacity = [PSCustomObject]@{
                        type = 'number'
                    }
                }
                definitions = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Maps integer type to PrimitiveType Integer' {
            $result.ResourceType.Value.Properties.MaxSize.PrimitiveType | Should -Be 'Integer'
        }

        It 'Maps number type to PrimitiveType Double' {
            $result.ResourceType.Value.Properties.DesiredCapacity.PrimitiveType | Should -Be 'Double'
        }
    }

    Context 'Resource with array of primitives' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::EC2::SecurityGroup'
                properties  = [PSCustomObject]@{
                    SecurityGroupIngress = [PSCustomObject]@{
                        type  = 'array'
                        items = [PSCustomObject]@{
                            type = 'string'
                        }
                    }
                }
                definitions = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Maps array type to Type List' {
            $result.ResourceType.Value.Properties.SecurityGroupIngress.Type | Should -Be 'List'
        }

        It 'Maps array items primitive type to PrimitiveItemType' {
            $result.ResourceType.Value.Properties.SecurityGroupIngress.PrimitiveItemType | Should -Be 'String'
        }
    }

    Context 'Resource with array of complex type ($ref)' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::ECS::Service'
                properties  = [PSCustomObject]@{
                    LoadBalancers = [PSCustomObject]@{
                        type  = 'array'
                        items = [PSCustomObject]@{
                            '$ref' = '#/definitions/LoadBalancer'
                        }
                    }
                }
                definitions = [PSCustomObject]@{
                    LoadBalancer = [PSCustomObject]@{
                        type       = 'object'
                        properties = [PSCustomObject]@{
                            ContainerName = [PSCustomObject]@{
                                type = 'string'
                            }
                            ContainerPort = [PSCustomObject]@{
                                type = 'integer'
                            }
                        }
                        required   = @('ContainerPort')
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Maps array of $ref to Type List with ItemType' {
            $result.ResourceType.Value.Properties.LoadBalancers.Type | Should -Be 'List'
            $result.ResourceType.Value.Properties.LoadBalancers.ItemType | Should -Be 'LoadBalancer'
        }

        It 'Generates a PropertyType entry for the definition' {
            $result.PropertyTypes.Keys | Should -Contain 'AWS::ECS::Service.LoadBalancer'
        }

        It 'PropertyType has correct properties' {
            $pt = $result.PropertyTypes['AWS::ECS::Service.LoadBalancer']
            $pt.Value.Properties.ContainerName.PrimitiveType | Should -Be 'String'
            $pt.Value.Properties.ContainerPort.PrimitiveType | Should -Be 'Integer'
        }

        It 'PropertyType respects required array' {
            $pt = $result.PropertyTypes['AWS::ECS::Service.LoadBalancer']
            $pt.Value.Properties.ContainerPort.Required | Should -Be 'True'
            $pt.Value.Properties.ContainerName.Required | Should -Be 'False'
        }
    }

    Context 'Property that $refs a scalar-alias definition (e.g. Arn)' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::CE::AnomalySubscription'
                properties  = [PSCustomObject]@{
                    SubscriptionArn = [PSCustomObject]@{
                        '$ref' = '#/definitions/Arn'
                    }
                    MonitorArnList  = [PSCustomObject]@{
                        type  = 'array'
                        items = [PSCustomObject]@{
                            '$ref' = '#/definitions/Arn'
                        }
                    }
                }
                definitions = [PSCustomObject]@{
                    Arn = [PSCustomObject]@{
                        type    = 'string'
                        pattern = '^arn:'
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Resolves a scalar-alias $ref to PrimitiveType String (not a complex Type)' {
            $result.ResourceType.Value.Properties.SubscriptionArn.PrimitiveType | Should -Be 'String'
            $result.ResourceType.Value.Properties.SubscriptionArn.PSObject.Properties.Name | Should -Not -Contain 'Type'
        }

        It 'Resolves an array of scalar-alias $refs to List + PrimitiveItemType String' {
            $result.ResourceType.Value.Properties.MonitorArnList.Type | Should -Be 'List'
            $result.ResourceType.Value.Properties.MonitorArnList.PrimitiveItemType | Should -Be 'String'
            $result.ResourceType.Value.Properties.MonitorArnList.PSObject.Properties.Name | Should -Not -Contain 'ItemType'
        }

        It 'Does not generate a PropertyType entry for the scalar alias' {
            $result.PropertyTypes.Keys | Should -Not -Contain 'AWS::CE::AnomalySubscription.Arn'
        }
    }

    Context 'Resource with readOnlyProperties' {
        BeforeAll {
            $schema = @{
                typeName           = 'AWS::CloudFormation::Stack'
                properties         = [PSCustomObject]@{
                    TemplateURL = [PSCustomObject]@{ type = 'string' }
                    StackName   = [PSCustomObject]@{ type = 'string' }
                    StackId     = [PSCustomObject]@{ type = 'string' }
                    StackStatus = [PSCustomObject]@{ type = 'string' }
                }
                required           = @('StackName')
                readOnlyProperties = @('/properties/StackId', '/properties/StackStatus')
                definitions        = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Excludes read-only properties from generated parameters' {
            $names = @($result.ResourceType.Value.Properties.PSObject.Properties.Name)
            $names | Should -Not -Contain 'StackId'
            $names | Should -Not -Contain 'StackStatus'
        }

        It 'Keeps settable properties' {
            $names = @($result.ResourceType.Value.Properties.PSObject.Properties.Name)
            $names | Should -Contain 'TemplateURL'
            $names | Should -Contain 'StackName'
        }

        It 'Does not force provider-schema required into a mandatory parameter' {
            $result.ResourceType.Value.Properties.StackName.Required | Should -Be 'False'
        }
    }

    Context 'Resource with Tag property' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::EC2::Instance'
                properties  = [PSCustomObject]@{
                    Tags = [PSCustomObject]@{
                        type  = 'array'
                        items = [PSCustomObject]@{
                            '$ref' = '#/definitions/Tag'
                        }
                    }
                }
                definitions = [PSCustomObject]@{
                    Tag = [PSCustomObject]@{
                        type       = 'object'
                        properties = [PSCustomObject]@{
                            Key   = [PSCustomObject]@{
                                type = 'string'
                            }
                            Value = [PSCustomObject]@{
                                type = 'string'
                            }
                        }
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Detects Tag definition and sets ItemType to Tag' {
            $result.ResourceType.Value.Properties.Tags.ItemType | Should -Be 'Tag'
            $result.ResourceType.Value.Properties.Tags.Type | Should -Be 'List'
        }

        It 'Does not generate a PropertyType entry for Tag' {
            $result.PropertyTypes.Keys | Should -Not -Contain 'AWS::EC2::Instance.Tag'
        }
    }

    Context 'Resource with TagsEntry property (not a Tag)' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::AmazonMQ::Broker'
                properties  = [PSCustomObject]@{
                    Tags = [PSCustomObject]@{
                        type  = 'array'
                        items = [PSCustomObject]@{
                            '$ref' = '#/definitions/TagsEntry'
                        }
                    }
                }
                definitions = [PSCustomObject]@{
                    TagsEntry = [PSCustomObject]@{
                        type       = 'object'
                        properties = [PSCustomObject]@{
                            Key   = [PSCustomObject]@{
                                type = 'string'
                            }
                            Value = [PSCustomObject]@{
                                type = 'string'
                            }
                        }
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Does NOT treat TagsEntry as Tag (different name)' {
            $result.ResourceType.Value.Properties.Tags.ItemType | Should -Be 'TagsEntry'
        }

        It 'Generates a PropertyType entry for TagsEntry' {
            $result.PropertyTypes.Keys | Should -Contain 'AWS::AmazonMQ::Broker.TagsEntry'
        }
    }

    Context 'Resource with $ref property (non-array complex type)' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::S3::Bucket'
                properties  = [PSCustomObject]@{
                    LoggingConfiguration = [PSCustomObject]@{
                        '$ref' = '#/definitions/LoggingConfiguration'
                    }
                }
                definitions = [PSCustomObject]@{
                    LoggingConfiguration = [PSCustomObject]@{
                        type       = 'object'
                        properties = [PSCustomObject]@{
                            DestinationBucketName = [PSCustomObject]@{
                                type = 'string'
                            }
                            LogFilePrefix         = [PSCustomObject]@{
                                type = 'string'
                            }
                        }
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Maps $ref property to Type with definition name' {
            $result.ResourceType.Value.Properties.LoggingConfiguration.Type | Should -Be 'LoggingConfiguration'
        }

        It 'Generates PropertyType entry for the definition' {
            $result.PropertyTypes.Keys | Should -Contain 'AWS::S3::Bucket.LoggingConfiguration'
        }
    }

    Context 'Deeply nested inline objects generate a property type at each level' {
        # Regression guard: inline objects nested more than one level deep (e.g.
        # Timestream Table MagneticStoreWriteProperties -> MagneticStoreRejectedDataLocation
        # -> S3Configuration) must each produce their own property type, so the
        # corresponding Add-VS...<Name> helper functions are generated. A previous
        # version only recursed one level and silently dropped the inner helpers.
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::Timestream::Table'
                properties  = [PSCustomObject]@{
                    MagneticStoreWriteProperties = [PSCustomObject]@{
                        type       = 'object'
                        properties = [PSCustomObject]@{
                            EnableMagneticStoreWrites         = [PSCustomObject]@{ type = 'boolean' }
                            MagneticStoreRejectedDataLocation = [PSCustomObject]@{
                                type       = 'object'
                                properties = [PSCustomObject]@{
                                    S3Configuration = [PSCustomObject]@{
                                        type       = 'object'
                                        properties = [PSCustomObject]@{
                                            BucketName = [PSCustomObject]@{ type = 'string' }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                definitions = $null
            } | ConvertTo-Json -Depth 20 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Generates a property type for each nesting level' {
            $result.PropertyTypes.Keys | Should -Contain 'AWS::Timestream::Table.MagneticStoreWriteProperties'
            $result.PropertyTypes.Keys | Should -Contain 'AWS::Timestream::Table.MagneticStoreRejectedDataLocation'
            $result.PropertyTypes.Keys | Should -Contain 'AWS::Timestream::Table.S3Configuration'
        }

        It 'Wires each level to reference the next as a complex Type' {
            $result.PropertyTypes['AWS::Timestream::Table.MagneticStoreWriteProperties'].Value.Properties.MagneticStoreRejectedDataLocation.Type | Should -Be 'MagneticStoreRejectedDataLocation'
            $result.PropertyTypes['AWS::Timestream::Table.MagneticStoreRejectedDataLocation'].Value.Properties.S3Configuration.Type | Should -Be 'S3Configuration'
        }
    }

    Context 'Array of inline objects generates an <Name>Items property type' {
        # Regression guard: an array whose items are an inline object (e.g. Logs
        # ScheduledQuery Tags -> array of { Key, Value }) must produce a
        # "<PropertyName>Items" property type (legacy naming), so Add-VS...<Name>Items
        # is generated and the resource property references ItemType = <Name>Items.
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::Logs::ScheduledQuery'
                properties  = [PSCustomObject]@{
                    Tags = [PSCustomObject]@{
                        type  = 'array'
                        items = [PSCustomObject]@{
                            type       = 'object'
                            properties = [PSCustomObject]@{
                                Key   = [PSCustomObject]@{ type = 'string' }
                                Value = [PSCustomObject]@{ type = 'string' }
                            }
                        }
                    }
                }
                definitions = $null
            } | ConvertTo-Json -Depth 20 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Generates a <Name>Items property type for the array item' {
            $result.PropertyTypes.Keys | Should -Contain 'AWS::Logs::ScheduledQuery.TagsItems'
        }

        It 'References the array as List + ItemType <Name>Items' {
            $result.ResourceType.Value.Properties.Tags.Type | Should -Be 'List'
            $result.ResourceType.Value.Properties.Tags.ItemType | Should -Be 'TagsItems'
        }
    }

    Context 'Resource with object/map property' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::CloudFormation::Stack'
                properties  = [PSCustomObject]@{
                    Parameters = [PSCustomObject]@{
                        type                 = 'object'
                        additionalProperties = [PSCustomObject]@{
                            type = 'string'
                        }
                    }
                }
                definitions = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Maps object with additionalProperties to Type Map' {
            $result.ResourceType.Value.Properties.Parameters.Type | Should -Be 'Map'
        }
    }

    Context 'Resource with oneOf/anyOf property' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::Events::Rule'
                properties  = [PSCustomObject]@{
                    Target = [PSCustomObject]@{
                        oneOf = @(
                            [PSCustomObject]@{ '$ref' = '#/definitions/EcsParameters' }
                            [PSCustomObject]@{ type = 'string' }
                        )
                    }
                }
                definitions = [PSCustomObject]@{
                    EcsParameters = [PSCustomObject]@{
                        type       = 'object'
                        properties = [PSCustomObject]@{
                            TaskDefinitionArn = [PSCustomObject]@{
                                type = 'string'
                            }
                        }
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Maps oneOf with $ref to Type with definition name' {
            $result.ResourceType.Value.Properties.Target.Type | Should -Be 'EcsParameters'
        }
    }

    Context 'oneOf with an array-of-$ref variant (e.g. DynamoDB KeySchema)' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::DynamoDB::Table'
                properties  = [PSCustomObject]@{
                    KeySchema = [PSCustomObject]@{
                        oneOf = @(
                            [PSCustomObject]@{
                                type  = 'array'
                                items = [PSCustomObject]@{ '$ref' = '#/definitions/KeySchema' }
                            }
                            [PSCustomObject]@{ type = 'object' }
                        )
                    }
                }
                definitions = [PSCustomObject]@{
                    KeySchema = [PSCustomObject]@{
                        type       = 'object'
                        properties = [PSCustomObject]@{
                            AttributeName = [PSCustomObject]@{ type = 'string' }
                            KeyType       = [PSCustomObject]@{ type = 'string' }
                        }
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Prefers the array variant, mapping to List + ItemType' {
            $result.ResourceType.Value.Properties.KeySchema.Type | Should -Be 'List'
            $result.ResourceType.Value.Properties.KeySchema.ItemType | Should -Be 'KeySchema'
        }

        It 'Does not collapse the union to a String' {
            $result.ResourceType.Value.Properties.KeySchema.PSObject.Properties.Name | Should -Not -Contain 'PrimitiveType'
        }
    }

    Context 'Property using patternProperties without an explicit type (a map)' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::Glue::UsageProfile'
                properties  = [PSCustomObject]@{
                    JobConfiguration = [PSCustomObject]@{
                        patternProperties = [PSCustomObject]@{
                            '^.+$' = [PSCustomObject]@{ '$ref' = '#/definitions/ConfigurationObject' }
                        }
                        additionalProperties = $false
                    }
                }
                definitions = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Maps a patternProperties map of complex values to Json (accepts hashtable/PSCustomObject)' {
            # The map values are a $ref to a complex object, so the property must accept
            # a PSCustomObject (e.g. a Vaporshell.Resource.* object), not a strict
            # [System.Collections.Hashtable]. It is therefore emitted as PrimitiveType Json.
            $result.ResourceType.Value.Properties.JobConfiguration.PrimitiveType | Should -Be 'Json'
        }
    }

    Context 'Property with a simple map (additionalProperties of a primitive)' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::CloudFormation::Stack'
                properties  = [PSCustomObject]@{
                    Parameters = [PSCustomObject]@{
                        type                 = 'object'
                        additionalProperties = [PSCustomObject]@{ type = 'string' }
                    }
                }
                definitions = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Keeps a primitive-valued map as Type Map' {
            $result.ResourceType.Value.Properties.Parameters.Type | Should -Be 'Map'
        }
    }

    Context 'Property with an empty schema' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::QBusiness::DataSource'
                properties  = [PSCustomObject]@{
                    Configuration = [PSCustomObject]@{}
                }
                definitions = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Maps an empty schema to Json (accepts any object), not String' {
            $result.ResourceType.Value.Properties.Configuration.PrimitiveType | Should -Be 'Json'
        }
    }

    Context 'Definitions without properties are skipped' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::Lambda::Function'
                properties  = [PSCustomObject]@{
                    Runtime = [PSCustomObject]@{
                        type = 'string'
                    }
                }
                definitions = [PSCustomObject]@{
                    RuntimeEnum = [PSCustomObject]@{
                        type = 'string'
                        enum = @('python3.9', 'nodejs18.x')
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Does not generate PropertyType for enum-only definitions' {
            $result.PropertyTypes.Count | Should -Be 0
        }
    }

    Context 'Empty schema handling' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::Empty::Resource'
                properties  = $null
                definitions = $null
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
        }

        It 'Returns a ResourceType even with no properties' {
            $result.ResourceType.Name | Should -Be 'AWS::Empty::Resource'
        }

        It 'Returns empty PropertyTypes' {
            $result.PropertyTypes.Count | Should -Be 0
        }
    }

    Context 'Integration: output is compatible with Convert-SpecToFunction input format' {
        BeforeAll {
            $schema = @{
                typeName    = 'AWS::EC2::VPC'
                properties  = [PSCustomObject]@{
                    CidrBlock          = [PSCustomObject]@{
                        type = 'string'
                    }
                    EnableDnsHostnames = [PSCustomObject]@{
                        type = 'boolean'
                    }
                    Tags               = [PSCustomObject]@{
                        type  = 'array'
                        items = [PSCustomObject]@{
                            '$ref' = '#/definitions/Tag'
                        }
                    }
                }
                required    = @('CidrBlock')
                definitions = [PSCustomObject]@{
                    Tag = [PSCustomObject]@{
                        type       = 'object'
                        properties = [PSCustomObject]@{
                            Key   = [PSCustomObject]@{
                                type = 'string'
                            }
                            Value = [PSCustomObject]@{
                                type = 'string'
                            }
                        }
                    }
                }
            } | ConvertTo-Json -Depth 10 | ConvertFrom-Json

            $result = ConvertFrom-ProviderSchema -SchemaObject $schema
            $resource = $result.ResourceType
        }

        It 'Has .Name property accessible' {
            $resource.Name | Should -Not -BeNullOrEmpty
        }

        It 'Has .Value.Documentation accessible' {
            $resource.Value.Documentation | Should -Not -BeNullOrEmpty
        }

        It 'Has .Value.Properties.PSObject.Properties iterable' {
            $props = @($resource.Value.Properties.PSObject.Properties)
            $props.Count | Should -BeGreaterThan 0
        }

        It 'Each property has Required field' {
            foreach ($prop in $resource.Value.Properties.PSObject.Properties) {
                $prop.Value.Required | Should -BeIn @('True', 'False')
            }
        }

        It 'String properties have PrimitiveType' {
            $resource.Value.Properties.CidrBlock.PrimitiveType | Should -Be 'String'
        }

        It 'Tag array properties have Type List and ItemType Tag' {
            $resource.Value.Properties.Tags.Type | Should -Be 'List'
            $resource.Value.Properties.Tags.ItemType | Should -Be 'Tag'
        }
    }
}
