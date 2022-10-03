function Add-VSDataBrewJobOutputFormatOptions {
    <#
    .SYNOPSIS
        Adds an AWS::DataBrew::Job.OutputFormatOptions resource property to the template. Represents a set of options that define the structure of comma-separated (CSV job output.

    .DESCRIPTION
        Adds an AWS::DataBrew::Job.OutputFormatOptions resource property to the template.
Represents a set of options that define the structure of comma-separated (CSV job output.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-outputformatoptions.html

    .PARAMETER Csv
        Represents a set of options that define the structure of comma-separated value CSV job output.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-outputformatoptions.html#cfn-databrew-job-outputformatoptions-csv
        UpdateType: Mutable
        Type: CsvOutputOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataBrew.Job.OutputFormatOptions')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataBrew.Job.OutputFormatOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
