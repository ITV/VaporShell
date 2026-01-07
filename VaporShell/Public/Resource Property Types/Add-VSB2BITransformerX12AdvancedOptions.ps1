function Add-VSB2BITransformerX12AdvancedOptions {
    <#
    .SYNOPSIS
        Adds an AWS::B2BI::Transformer.X12AdvancedOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::B2BI::Transformer.X12AdvancedOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12advancedoptions.html

    .PARAMETER ValidationOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12advancedoptions.html#cfn-b2bi-transformer-x12advancedoptions-validationoptions
        UpdateType: Mutable
        Type: X12ValidationOptions

    .PARAMETER SplitOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12advancedoptions.html#cfn-b2bi-transformer-x12advancedoptions-splitoptions
        UpdateType: Mutable
        Type: X12SplitOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.B2BI.Transformer.X12AdvancedOptions')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ValidationOptions,

        [Parameter(Mandatory = $false)]
        $SplitOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.B2BI.Transformer.X12AdvancedOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
