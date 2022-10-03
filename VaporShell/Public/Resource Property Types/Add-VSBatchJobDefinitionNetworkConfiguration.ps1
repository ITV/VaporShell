function Add-VSBatchJobDefinitionNetworkConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.NetworkConfiguration resource property to the template. The network configuration for jobs that are running on Fargate resources. Jobs that are running on EC2 resources must not specify this parameter.

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.NetworkConfiguration resource property to the template.
The network configuration for jobs that are running on Fargate resources. Jobs that are running on EC2 resources must not specify this parameter.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-networkconfiguration.html

    .PARAMETER AssignPublicIp
        Indicates whether the job should have a public IP address. For a job that is running on Fargate resources in a private subnet to send outbound traffic to the internet for example, to pull container images, the private subnet requires a NAT gateway be attached to route requests to the internet. For more information, see Amazon ECS task networking: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html. The default value is "DISABLED".

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-networkconfiguration.html#cfn-batch-jobdefinition-containerproperties-networkconfiguration-assignpublicip
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Batch.JobDefinition.NetworkConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AssignPublicIp
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.NetworkConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
