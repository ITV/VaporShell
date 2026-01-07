function Add-VSB2BITransformerAdvancedOptions {
    <#
    .SYNOPSIS
        Adds an AWS::B2BI::Transformer.AdvancedOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::B2BI::Transformer.AdvancedOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-advancedoptions.html

    .PARAMETER X12
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-advancedoptions.html#cfn-b2bi-transformer-advancedoptions-x12
        UpdateType: Mutable
        Type: X12AdvancedOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.B2BI.Transformer.AdvancedOptions')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $X12

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.B2BI.Transformer.AdvancedOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
