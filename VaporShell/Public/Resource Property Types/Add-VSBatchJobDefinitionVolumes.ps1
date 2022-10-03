function Add-VSBatchJobDefinitionVolumes {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.Volumes resource property to the template. A list of volumes associated with the job.

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.Volumes resource property to the template.
A list of volumes associated with the job.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html

    .PARAMETER Host
        The contents of the host parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume. However, the data isn't guaranteed to persist after the containers associated with it stop running.
This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be provided.

        Type: VolumesHost
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-host
        UpdateType: Mutable

    .PARAMETER EfsVolumeConfiguration
        This is used when you're using an Amazon Elastic File System file system for job storage. For more information, see Amazon EFS Volumes: https://docs.aws.amazon.com/batch/latest/userguide/efs-volumes.html in the * AWS Batch User Guide*.

        Type: EfsVolumeConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-efsvolumeconfiguration
        UpdateType: Mutable

    .PARAMETER Name
        The name of the volume. It can be up to 255 letters long. It can contain uppercase and lowercase letters, numbers, hyphens -, and underscores _. This name is referenced in the sourceVolume parameter of container definition mountPoints.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-name
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Batch.JobDefinition.Volumes')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Host,
        [parameter(Mandatory = $false)]
        $EfsVolumeConfiguration,
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
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.Volumes'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
