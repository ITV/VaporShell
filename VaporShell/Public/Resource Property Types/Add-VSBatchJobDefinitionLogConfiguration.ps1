function Add-VSBatchJobDefinitionLogConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.LogConfiguration resource property to the template. Log configuration options to send to a custom log driver for the container.

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.LogConfiguration resource property to the template.
Log configuration options to send to a custom log driver for the container.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-logconfiguration.html

    .PARAMETER SecretOptions
        The secrets to pass to the log configuration. For more information, see Specifying Sensitive Data: https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html in the * AWS Batch User Guide*.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-logconfiguration.html#cfn-batch-jobdefinition-containerproperties-logconfiguration-secretoptions
        ItemType: Secret
        UpdateType: Mutable

    .PARAMETER Options
        The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: sudo docker version | grep "Server API version"

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-logconfiguration.html#cfn-batch-jobdefinition-containerproperties-logconfiguration-options
        PrimitiveType: Json
        UpdateType: Mutable

    .PARAMETER LogDriver
        The log driver to use for the container. The valid values listed for this parameter are log drivers that the Amazon ECS container agent can communicate with by default.
The supported log drivers are awslogs, fluentd, gelf, json-file, journald, logentries, syslog, and splunk.
Jobs that are running on Fargate resources are restricted to the awslogs and splunk log drivers.
awslogs
Specifies the Amazon CloudWatch Logs logging driver. For more information, see Using the awslogs Log Driver: https://docs.aws.amazon.com/batch/latest/userguide/using_awslogs.html in the * AWS Batch User Guide* and Amazon CloudWatch Logs logging driver: https://docs.docker.com/config/containers/logging/awslogs/ in the Docker documentation.
fluentd
Specifies the Fluentd logging driver. For more information, including usage and options, see Fluentd logging driver: https://docs.docker.com/config/containers/logging/fluentd/ in the Docker documentation.
gelf
Specifies the Graylog Extended Format GELF logging driver. For more information, including usage and options, see Graylog Extended Format logging driver: https://docs.docker.com/config/containers/logging/gelf/ in the Docker documentation.
journald
Specifies the journald logging driver. For more information, including usage and options, see Journald logging driver: https://docs.docker.com/config/containers/logging/journald/ in the Docker documentation.
json-file
Specifies the JSON file logging driver. For more information, including usage and options, see JSON File logging driver: https://docs.docker.com/config/containers/logging/json-file/ in the Docker documentation.
splunk
Specifies the Splunk logging driver. For more information, including usage and options, see Splunk logging driver: https://docs.docker.com/config/containers/logging/splunk/ in the Docker documentation.
syslog
Specifies the syslog logging driver. For more information, including usage and options, see Syslog logging driver: https://docs.docker.com/config/containers/logging/syslog/ in the Docker documentation.
If you have a custom driver that's not listed earlier that you want to work with the Amazon ECS container agent, you can fork the Amazon ECS container agent project that's available on GitHub: https://github.com/aws/amazon-ecs-agent and customize it to work with that driver. We encourage you to submit pull requests for changes that you want to have included. However, Amazon Web Services doesn't currently support running modified copies of this software.
This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: sudo docker version | grep "Server API version"

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-logconfiguration.html#cfn-batch-jobdefinition-containerproperties-logconfiguration-logdriver
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Batch.JobDefinition.LogConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Batch.JobDefinition.Secret"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SecretOptions,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Options,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LogDriver
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Options {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.LogConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
