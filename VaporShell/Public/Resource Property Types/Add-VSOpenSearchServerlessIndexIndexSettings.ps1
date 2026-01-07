function Add-VSOpenSearchServerlessIndexIndexSettings {
    <#
    .SYNOPSIS
        Adds an AWS::OpenSearchServerless::Index.IndexSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::OpenSearchServerless::Index.IndexSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-indexsettings.html

    .PARAMETER Index
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-indexsettings.html#cfn-opensearchserverless-index-indexsettings-index
        UpdateType: Mutable
        Type: Index

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.OpenSearchServerless.Index.IndexSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Index

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpenSearchServerless.Index.IndexSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
