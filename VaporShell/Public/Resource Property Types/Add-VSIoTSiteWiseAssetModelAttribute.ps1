function Add-VSIoTSiteWiseAssetModelAttribute {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::AssetModel.Attribute resource property to the template. Contains an asset attribute property. For more information, see Defining data properties: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes in the *AWS IoT SiteWise User Guide*.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::AssetModel.Attribute resource property to the template.
Contains an asset attribute property. For more information, see Defining data properties: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes in the *AWS IoT SiteWise User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-attribute.html

    .PARAMETER DefaultValue
        The default value of the asset model property attribute. All assets that you create from the asset model contain this attribute value. You can update an attribute's value after you create an asset. For more information, see Updating attribute values: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html in the *AWS IoT SiteWise User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-attribute.html#cfn-iotsitewise-assetmodel-attribute-defaultvalue
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.AssetModel.Attribute')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.AssetModel.Attribute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
