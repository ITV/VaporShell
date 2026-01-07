function Add-VSLambdaEventSourceMappingSelfManagedKafkaEventSourceConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::EventSourceMapping.SelfManagedKafkaEventSourceConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lambda::EventSourceMapping.SelfManagedKafkaEventSourceConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig.html

    .PARAMETER ConsumerGroupId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig.html#cfn-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig-consumergroupid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SchemaRegistryConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig.html#cfn-lambda-eventsourcemapping-selfmanagedkafkaeventsourceconfig-schemaregistryconfig
        UpdateType: Mutable
        Type: SchemaRegistryConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lambda.EventSourceMapping.SelfManagedKafkaEventSourceConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ConsumerGroupId,

        [Parameter(Mandatory = $false)]
        $SchemaRegistryConfig

    )

    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }

    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }

    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.EventSourceMapping.SelfManagedKafkaEventSourceConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
