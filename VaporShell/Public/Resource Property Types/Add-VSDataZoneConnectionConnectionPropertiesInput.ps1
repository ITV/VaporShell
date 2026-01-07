function Add-VSDataZoneConnectionConnectionPropertiesInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::Connection.ConnectionPropertiesInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::Connection.ConnectionPropertiesInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html

    .PARAMETER AmazonQProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-amazonqproperties
        UpdateType: Mutable
        Type: AmazonQPropertiesInput

    .PARAMETER IamProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-iamproperties
        UpdateType: Mutable
        Type: IamPropertiesInput

    .PARAMETER S3Properties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-s3properties
        UpdateType: Mutable
        Type: S3PropertiesInput

    .PARAMETER SparkEmrProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-sparkemrproperties
        UpdateType: Mutable
        Type: SparkEmrPropertiesInput

    .PARAMETER HyperPodProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-hyperpodproperties
        UpdateType: Mutable
        Type: HyperPodPropertiesInput

    .PARAMETER SparkGlueProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-sparkglueproperties
        UpdateType: Mutable
        Type: SparkGluePropertiesInput

    .PARAMETER MlflowProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-mlflowproperties
        UpdateType: Mutable
        Type: MlflowPropertiesInput

    .PARAMETER AthenaProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-athenaproperties
        UpdateType: Mutable
        Type: AthenaPropertiesInput

    .PARAMETER GlueProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-glueproperties
        UpdateType: Mutable
        Type: GluePropertiesInput

    .PARAMETER RedshiftProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-connectionpropertiesinput.html#cfn-datazone-connection-connectionpropertiesinput-redshiftproperties
        UpdateType: Mutable
        Type: RedshiftPropertiesInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.Connection.ConnectionPropertiesInput')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AmazonQProperties,

        [Parameter(Mandatory = $false)]
        $IamProperties,

        [Parameter(Mandatory = $false)]
        $S3Properties,

        [Parameter(Mandatory = $false)]
        $SparkEmrProperties,

        [Parameter(Mandatory = $false)]
        $HyperPodProperties,

        [Parameter(Mandatory = $false)]
        $SparkGlueProperties,

        [Parameter(Mandatory = $false)]
        $MlflowProperties,

        [Parameter(Mandatory = $false)]
        $AthenaProperties,

        [Parameter(Mandatory = $false)]
        $GlueProperties,

        [Parameter(Mandatory = $false)]
        $RedshiftProperties

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.Connection.ConnectionPropertiesInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
