function Add-VSSageMakerInferenceComponentAutoRollbackConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::InferenceComponent.AutoRollbackConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::InferenceComponent.AutoRollbackConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-autorollbackconfiguration.html

    .PARAMETER Alarms
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-autorollbackconfiguration.html#cfn-sagemaker-inferencecomponent-autorollbackconfiguration-alarms
        UpdateType: Mutable
        Type: List
        ItemType: Alarm
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.InferenceComponent.AutoRollbackConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.InferenceComponent.Alarm"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Alarms

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.InferenceComponent.AutoRollbackConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
