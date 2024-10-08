function Add-VSB2BITransformerEdiType {
    <#
    .SYNOPSIS
        Adds an AWS::B2BI::Transformer.EdiType resource property to the template. 

    .DESCRIPTION
        Adds an AWS::B2BI::Transformer.EdiType resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-editype.html

    .PARAMETER X12Details
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-editype.html#cfn-b2bi-transformer-editype-x12details
        UpdateType: Mutable
        Type: X12Details

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.B2BI.Transformer.EdiType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $X12Details
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.B2BI.Transformer.EdiType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
