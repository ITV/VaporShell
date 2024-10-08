function Add-VSCleanRoomsMLTrainingDatasetDatasetInputConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRoomsML::TrainingDataset.DatasetInputConfig resource property to the template. 

    .DESCRIPTION
        Adds an AWS::CleanRoomsML::TrainingDataset.DatasetInputConfig resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-datasetinputconfig.html

    .PARAMETER Schema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-datasetinputconfig.html#cfn-cleanroomsml-trainingdataset-datasetinputconfig-schema
        UpdateType: Immutable
        Type: List
        ItemType: ColumnSchema
        DuplicatesAllowed: True

    .PARAMETER DataSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-datasetinputconfig.html#cfn-cleanroomsml-trainingdataset-datasetinputconfig-datasource
        UpdateType: Immutable
        Type: DataSource

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CleanRoomsML.TrainingDataset.DatasetInputConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CleanRoomsML.TrainingDataset.ColumnSchema"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Schema,
        [parameter(Mandatory = $true)]
        $DataSource
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRoomsML.TrainingDataset.DatasetInputConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
