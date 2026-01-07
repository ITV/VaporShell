function Add-VSMPAIdentitySourceIdentitySourceParameters {
    <#
    .SYNOPSIS
        Adds an AWS::MPA::IdentitySource.IdentitySourceParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::MPA::IdentitySource.IdentitySourceParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-identitysource-identitysourceparameters.html

    .PARAMETER IamIdentityCenter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mpa-identitysource-identitysourceparameters.html#cfn-mpa-identitysource-identitysourceparameters-iamidentitycenter
        UpdateType: Immutable
        Type: IamIdentityCenter

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MPA.IdentitySource.IdentitySourceParameters')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $IamIdentityCenter

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MPA.IdentitySource.IdentitySourceParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
