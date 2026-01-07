function Add-VSSageMakerProcessingJobAppSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ProcessingJob.AppSpecification resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ProcessingJob.AppSpecification resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-appspecification.html

    .PARAMETER ContainerEntrypoint
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-appspecification.html#cfn-sagemaker-processingjob-appspecification-containerentrypoint
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ImageUri
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-appspecification.html#cfn-sagemaker-processingjob-appspecification-imageuri
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER ContainerArguments
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-appspecification.html#cfn-sagemaker-processingjob-appspecification-containerarguments
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ProcessingJob.AppSpecification')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ContainerEntrypoint,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ImageUri,

        [Parameter(Mandatory = $false)]
        $ContainerArguments

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ProcessingJob.AppSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
