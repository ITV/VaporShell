function Add-VSWorkSpacesWebBrowserSettingsWebContentFilteringPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::WorkSpacesWeb::BrowserSettings.WebContentFilteringPolicy resource property to the template.

    .DESCRIPTION
        Adds an AWS::WorkSpacesWeb::BrowserSettings.WebContentFilteringPolicy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-browsersettings-webcontentfilteringpolicy.html

    .PARAMETER BlockedUrls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-browsersettings-webcontentfilteringpolicy.html#cfn-workspacesweb-browsersettings-webcontentfilteringpolicy-blockedurls
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AllowedUrls
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-browsersettings-webcontentfilteringpolicy.html#cfn-workspacesweb-browsersettings-webcontentfilteringpolicy-allowedurls
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER BlockedCategories
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-browsersettings-webcontentfilteringpolicy.html#cfn-workspacesweb-browsersettings-webcontentfilteringpolicy-blockedcategories
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WorkSpacesWeb.BrowserSettings.WebContentFilteringPolicy')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $BlockedUrls,

        [Parameter(Mandatory = $false)]
        $AllowedUrls,

        [Parameter(Mandatory = $false)]
        $BlockedCategories

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WorkSpacesWeb.BrowserSettings.WebContentFilteringPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
