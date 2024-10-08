function Add-VSQuickSightTemplateDefaultNewSheetConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DefaultNewSheetConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DefaultNewSheetConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultnewsheetconfiguration.html

    .PARAMETER SheetContentType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultnewsheetconfiguration.html#cfn-quicksight-template-defaultnewsheetconfiguration-sheetcontenttype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InteractiveLayoutConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultnewsheetconfiguration.html#cfn-quicksight-template-defaultnewsheetconfiguration-interactivelayoutconfiguration
        UpdateType: Mutable
        Type: DefaultInteractiveLayoutConfiguration

    .PARAMETER PaginatedLayoutConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultnewsheetconfiguration.html#cfn-quicksight-template-defaultnewsheetconfiguration-paginatedlayoutconfiguration
        UpdateType: Mutable
        Type: DefaultPaginatedLayoutConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.DefaultNewSheetConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SheetContentType,

        [Parameter(Mandatory = $false)]
        $InteractiveLayoutConfiguration,

        [Parameter(Mandatory = $false)]
        $PaginatedLayoutConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DefaultNewSheetConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
