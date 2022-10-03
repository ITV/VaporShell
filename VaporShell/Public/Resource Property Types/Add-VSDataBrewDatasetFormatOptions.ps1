function Add-VSDataBrewDatasetFormatOptions {
    <#
    .SYNOPSIS
        Adds an AWS::DataBrew::Dataset.FormatOptions resource property to the template. Represents a set of options that define the structure of either comma-separated value (CSV, Excel, or JSON input.

    .DESCRIPTION
        Adds an AWS::DataBrew::Dataset.FormatOptions resource property to the template.
Represents a set of options that define the structure of either comma-separated value (CSV, Excel, or JSON input.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-formatoptions.html

    .PARAMETER Json
        Options that define how JSON input is to be interpreted by DataBrew.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-formatoptions.html#cfn-databrew-dataset-formatoptions-json
        UpdateType: Mutable
        Type: JsonOptions

    .PARAMETER Excel
        Options that define how Excel input is to be interpreted by DataBrew.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-formatoptions.html#cfn-databrew-dataset-formatoptions-excel
        UpdateType: Mutable
        Type: ExcelOptions

    .PARAMETER Csv
        Options that define how CSV input is to be interpreted by DataBrew.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-formatoptions.html#cfn-databrew-dataset-formatoptions-csv
        UpdateType: Mutable
        Type: CsvOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataBrew.Dataset.FormatOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Json,
        [parameter(Mandatory = $false)]
        $Excel,
        [parameter(Mandatory = $false)]
        $Csv
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataBrew.Dataset.FormatOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
