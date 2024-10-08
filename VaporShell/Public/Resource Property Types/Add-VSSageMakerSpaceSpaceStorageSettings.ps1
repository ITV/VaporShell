function Add-VSSageMakerSpaceSpaceStorageSettings {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Space.SpaceStorageSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::Space.SpaceStorageSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacestoragesettings.html

    .PARAMETER EbsStorageSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacestoragesettings.html#cfn-sagemaker-space-spacestoragesettings-ebsstoragesettings
        UpdateType: Mutable
        Type: EbsStorageSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.Space.SpaceStorageSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $EbsStorageSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Space.SpaceStorageSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
