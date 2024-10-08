function Add-VSQuickSightTemplateDefaultFilterListControlOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DefaultFilterListControlOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DefaultFilterListControlOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfilterlistcontroloptions.html

    .PARAMETER Type
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfilterlistcontroloptions.html#cfn-quicksight-template-defaultfilterlistcontroloptions-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DisplayOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfilterlistcontroloptions.html#cfn-quicksight-template-defaultfilterlistcontroloptions-displayoptions
        UpdateType: Mutable
        Type: ListControlDisplayOptions

    .PARAMETER SelectableValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultfilterlistcontroloptions.html#cfn-quicksight-template-defaultfilterlistcontroloptions-selectablevalues
        UpdateType: Mutable
        Type: FilterSelectableValues

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.DefaultFilterListControlOptions')]
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
        $Type,

        [Parameter(Mandatory = $false)]
        $DisplayOptions,

        [Parameter(Mandatory = $false)]
        $SelectableValues

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DefaultFilterListControlOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
