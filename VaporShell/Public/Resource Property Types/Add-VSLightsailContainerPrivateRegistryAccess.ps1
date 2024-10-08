function Add-VSLightsailContainerPrivateRegistryAccess {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Container.PrivateRegistryAccess resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Lightsail::Container.PrivateRegistryAccess resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-privateregistryaccess.html

    .PARAMETER EcrImagePullerRole
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-privateregistryaccess.html#cfn-lightsail-container-privateregistryaccess-ecrimagepullerrole
        UpdateType: Mutable
        Type: EcrImagePullerRole

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lightsail.Container.PrivateRegistryAccess')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $EcrImagePullerRole
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lightsail.Container.PrivateRegistryAccess'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
