function Add-VSCleanRoomsCollaborationMLPaymentConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::Collaboration.MLPaymentConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::Collaboration.MLPaymentConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlpaymentconfig.html

    .PARAMETER ModelInference
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlpaymentconfig.html#cfn-cleanrooms-collaboration-mlpaymentconfig-modelinference
        UpdateType: Immutable
        Type: ModelInferencePaymentConfig

    .PARAMETER ModelTraining
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlpaymentconfig.html#cfn-cleanrooms-collaboration-mlpaymentconfig-modeltraining
        UpdateType: Immutable
        Type: ModelTrainingPaymentConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.Collaboration.MLPaymentConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ModelInference,

        [Parameter(Mandatory = $false)]
        $ModelTraining

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.Collaboration.MLPaymentConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
