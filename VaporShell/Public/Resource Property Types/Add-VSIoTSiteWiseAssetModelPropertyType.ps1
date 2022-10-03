function Add-VSIoTSiteWiseAssetModelPropertyType {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::AssetModel.PropertyType resource property to the template. Contains a property type, which can be one of attribute, measurement, metric, or transform.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::AssetModel.PropertyType resource property to the template.
Contains a property type, which can be one of attribute, measurement, metric, or transform.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html

    .PARAMETER TypeName
        The type of property type, which can be one of Attribute, Measurement, Metric, or Transform.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html#cfn-iotsitewise-assetmodel-propertytype-typename
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Attribute
        Specifies an asset attribute property. An attribute generally contains static information, such as the serial number of an industrial IoT: https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications wind turbine.
This is required if the TypeName is Attribute and has a DefaultValue.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html#cfn-iotsitewise-assetmodel-propertytype-attribute
        UpdateType: Mutable
        Type: Attribute

    .PARAMETER Transform
        Specifies an asset transform property. A transform contains a mathematical expression that maps a property's data points from one form to another, such as a unit conversion from Celsius to Fahrenheit.
This is required if the TypeName is Transform.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html#cfn-iotsitewise-assetmodel-propertytype-transform
        UpdateType: Mutable
        Type: Transform

    .PARAMETER Metric
        Specifies an asset metric property. A metric contains a mathematical expression that uses aggregate functions to process all input data points over a time interval and output a single data point, such as to calculate the average hourly temperature.
This is required if the TypeName is Metric.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html#cfn-iotsitewise-assetmodel-propertytype-metric
        UpdateType: Mutable
        Type: Metric

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.AssetModel.PropertyType')]
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
        $TypeName,
        [parameter(Mandatory = $false)]
        $Attribute,
        [parameter(Mandatory = $false)]
        $Transform,
        [parameter(Mandatory = $false)]
        $Metric
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.AssetModel.PropertyType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
