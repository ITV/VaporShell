function Add-VSQuickSightTemplateTableFieldLinkContentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.TableFieldLinkContentConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.TableFieldLinkContentConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldlinkcontentconfiguration.html

    .PARAMETER CustomIconContent
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldlinkcontentconfiguration.html#cfn-quicksight-template-tablefieldlinkcontentconfiguration-customiconcontent
        UpdateType: Mutable
        Type: TableFieldCustomIconContent

    .PARAMETER CustomTextContent
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldlinkcontentconfiguration.html#cfn-quicksight-template-tablefieldlinkcontentconfiguration-customtextcontent
        UpdateType: Mutable
        Type: TableFieldCustomTextContent

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.TableFieldLinkContentConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $CustomIconContent,

        [Parameter(Mandatory = $false)]
        $CustomTextContent

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.TableFieldLinkContentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
