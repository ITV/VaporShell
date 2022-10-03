function Add-VSAmplifyUIBuilderComponentComponentVariant {
    <#
    .SYNOPSIS
        Adds an AWS::AmplifyUIBuilder::Component.ComponentVariant resource property to the template. The ComponentVariant property specifies the style configuration of a unique variation of a main component.

    .DESCRIPTION
        Adds an AWS::AmplifyUIBuilder::Component.ComponentVariant resource property to the template.
The ComponentVariant property specifies the style configuration of a unique variation of a main component.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentvariant.html

    .PARAMETER VariantValues
        The combination of variants that comprise this variant.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentvariant.html#cfn-amplifyuibuilder-component-componentvariant-variantvalues
        UpdateType: Mutable
        Type: ComponentVariantValues

    .PARAMETER Overrides
        The properties of the component variant that can be overriden when customizing an instance of the component. You can't specify tags as a valid property for overrides.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentvariant.html#cfn-amplifyuibuilder-component-componentvariant-overrides
        UpdateType: Mutable
        Type: ComponentOverrides

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AmplifyUIBuilder.Component.ComponentVariant')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $VariantValues,
        [parameter(Mandatory = $false)]
        $Overrides
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AmplifyUIBuilder.Component.ComponentVariant'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
