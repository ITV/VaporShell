function Add-VSSageMakerDataQualityJobDefinitionDatasetFormat {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::DataQualityJobDefinition.DatasetFormat resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::DataQualityJobDefinition.DatasetFormat resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-datasetformat.html

    .PARAMETER Parquet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-datasetformat.html#cfn-sagemaker-dataqualityjobdefinition-datasetformat-parquet
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER Csv
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-datasetformat.html#cfn-sagemaker-dataqualityjobdefinition-datasetformat-csv
        UpdateType: Immutable
        Type: Csv

    .PARAMETER Json
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-datasetformat.html#cfn-sagemaker-dataqualityjobdefinition-datasetformat-json
        UpdateType: Immutable
        Type: Json

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.DataQualityJobDefinition.DatasetFormat')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Parquet,
        [parameter(Mandatory = $false)]
        $Csv,
        [parameter(Mandatory = $false)]
        $Json
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.DataQualityJobDefinition.DatasetFormat'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
