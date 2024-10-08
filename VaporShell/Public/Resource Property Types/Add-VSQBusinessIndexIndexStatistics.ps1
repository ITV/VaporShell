function Add-VSQBusinessIndexIndexStatistics {
    <#
    .SYNOPSIS
        Adds an AWS::QBusiness::Index.IndexStatistics resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QBusiness::Index.IndexStatistics resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-indexstatistics.html

    .PARAMETER TextDocumentStatistics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-indexstatistics.html#cfn-qbusiness-index-indexstatistics-textdocumentstatistics
        UpdateType: Mutable
        Type: TextDocumentStatistics

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QBusiness.Index.IndexStatistics')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TextDocumentStatistics
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QBusiness.Index.IndexStatistics'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
