function Add-VSWisdomQuickResponseQuickResponseContents {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::QuickResponse.QuickResponseContents resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::QuickResponse.QuickResponseContents resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-quickresponse-quickresponsecontents.html

    .PARAMETER PlainText
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-quickresponse-quickresponsecontents.html#cfn-wisdom-quickresponse-quickresponsecontents-plaintext
        UpdateType: Mutable
        Type: QuickResponseContentProvider

    .PARAMETER Markdown
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-quickresponse-quickresponsecontents.html#cfn-wisdom-quickresponse-quickresponsecontents-markdown
        UpdateType: Mutable
        Type: QuickResponseContentProvider

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.QuickResponse.QuickResponseContents')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PlainText,

        [Parameter(Mandatory = $false)]
        $Markdown

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.QuickResponse.QuickResponseContents'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
