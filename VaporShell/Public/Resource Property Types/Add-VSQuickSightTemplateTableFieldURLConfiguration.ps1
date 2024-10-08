function Add-VSQuickSightTemplateTableFieldURLConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.TableFieldURLConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.TableFieldURLConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldurlconfiguration.html

    .PARAMETER LinkConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldurlconfiguration.html#cfn-quicksight-template-tablefieldurlconfiguration-linkconfiguration
        UpdateType: Mutable
        Type: TableFieldLinkConfiguration

    .PARAMETER ImageConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldurlconfiguration.html#cfn-quicksight-template-tablefieldurlconfiguration-imageconfiguration
        UpdateType: Mutable
        Type: TableFieldImageConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.TableFieldURLConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LinkConfiguration,

        [Parameter(Mandatory = $false)]
        $ImageConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.TableFieldURLConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
