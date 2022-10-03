function Add-VSLocationMapMapConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Location::Map.MapConfiguration resource property to the template. Specifies the map tile style selected from an available provider.

    .DESCRIPTION
        Adds an AWS::Location::Map.MapConfiguration resource property to the template.
Specifies the map tile style selected from an available provider.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-map-mapconfiguration.html

    .PARAMETER Style
        Specifies the map style selected from an available data provider.
Valid styles: VectorEsriStreets, VectorEsriTopographic, VectorEsriNavigation, VectorEsriDarkGrayCanvas, VectorEsriLightGrayCanvas, VectorHereBerlin.
When using HERE as your data provider, and selecting the Style VectorHereBerlin, you may not use HERE Technologies maps for Asset Management. See the AWS Service Terms: http://aws.amazon.com/service-terms/ for Amazon Location Service.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-map-mapconfiguration.html#cfn-location-map-mapconfiguration-style
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Location.Map.MapConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Style
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Location.Map.MapConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
