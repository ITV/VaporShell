function Add-VSQBusinessDataSourceMediaExtractionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QBusiness::DataSource.MediaExtractionConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QBusiness::DataSource.MediaExtractionConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-mediaextractionconfiguration.html

    .PARAMETER VideoExtractionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-mediaextractionconfiguration.html#cfn-qbusiness-datasource-mediaextractionconfiguration-videoextractionconfiguration
        UpdateType: Mutable
        Type: VideoExtractionConfiguration

    .PARAMETER AudioExtractionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-mediaextractionconfiguration.html#cfn-qbusiness-datasource-mediaextractionconfiguration-audioextractionconfiguration
        UpdateType: Mutable
        Type: AudioExtractionConfiguration

    .PARAMETER ImageExtractionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-mediaextractionconfiguration.html#cfn-qbusiness-datasource-mediaextractionconfiguration-imageextractionconfiguration
        UpdateType: Mutable
        Type: ImageExtractionConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QBusiness.DataSource.MediaExtractionConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $VideoExtractionConfiguration,

        [Parameter(Mandatory = $false)]
        $AudioExtractionConfiguration,

        [Parameter(Mandatory = $false)]
        $ImageExtractionConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QBusiness.DataSource.MediaExtractionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
