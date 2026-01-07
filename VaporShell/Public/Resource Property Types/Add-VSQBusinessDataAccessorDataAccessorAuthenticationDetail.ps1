function Add-VSQBusinessDataAccessorDataAccessorAuthenticationDetail {
    <#
    .SYNOPSIS
        Adds an AWS::QBusiness::DataAccessor.DataAccessorAuthenticationDetail resource property to the template.

    .DESCRIPTION
        Adds an AWS::QBusiness::DataAccessor.DataAccessorAuthenticationDetail resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationdetail.html

    .PARAMETER AuthenticationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationdetail.html#cfn-qbusiness-dataaccessor-dataaccessorauthenticationdetail-authenticationconfiguration
        UpdateType: Mutable
        Type: DataAccessorAuthenticationConfiguration

    .PARAMETER ExternalIds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationdetail.html#cfn-qbusiness-dataaccessor-dataaccessorauthenticationdetail-externalids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AuthenticationType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-dataaccessorauthenticationdetail.html#cfn-qbusiness-dataaccessor-dataaccessorauthenticationdetail-authenticationtype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QBusiness.DataAccessor.DataAccessorAuthenticationDetail')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AuthenticationConfiguration,

        [Parameter(Mandatory = $false)]
        $ExternalIds,

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
        $AuthenticationType

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QBusiness.DataAccessor.DataAccessorAuthenticationDetail'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
