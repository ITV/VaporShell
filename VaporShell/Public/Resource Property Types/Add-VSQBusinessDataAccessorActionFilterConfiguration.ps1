function Add-VSQBusinessDataAccessorActionFilterConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QBusiness::DataAccessor.ActionFilterConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QBusiness::DataAccessor.ActionFilterConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-actionfilterconfiguration.html

    .PARAMETER DocumentAttributeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-actionfilterconfiguration.html#cfn-qbusiness-dataaccessor-actionfilterconfiguration-documentattributefilter
        UpdateType: Mutable
        Type: AttributeFilter

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QBusiness.DataAccessor.ActionFilterConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $DocumentAttributeFilter

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QBusiness.DataAccessor.ActionFilterConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
