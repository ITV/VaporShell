function Add-VSDataBrewDatasetPathOptions {
    <#
    .SYNOPSIS
        Adds an AWS::DataBrew::Dataset.PathOptions resource property to the template. Represents a set of options that define how DataBrew selects files for a given Amazon S3 path in a dataset.

    .DESCRIPTION
        Adds an AWS::DataBrew::Dataset.PathOptions resource property to the template.
Represents a set of options that define how DataBrew selects files for a given Amazon S3 path in a dataset.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathoptions.html

    .PARAMETER FilesLimit
        If provided, this structure imposes a limit on a number of files that should be selected.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathoptions.html#cfn-databrew-dataset-pathoptions-fileslimit
        UpdateType: Mutable
        Type: FilesLimit

    .PARAMETER LastModifiedDateCondition
        If provided, this structure defines a date range for matching Amazon S3 objects based on their LastModifiedDate attribute in Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathoptions.html#cfn-databrew-dataset-pathoptions-lastmodifieddatecondition
        UpdateType: Mutable
        Type: FilterExpression

    .PARAMETER Parameters
        A structure that maps names of parameters used in the Amazon S3 path of a dataset to their definitions.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-pathoptions.html#cfn-databrew-dataset-pathoptions-parameters
        UpdateType: Mutable
        Type: List
        ItemType: PathParameter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataBrew.Dataset.PathOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FilesLimit,
        [parameter(Mandatory = $false)]
        $LastModifiedDateCondition,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DataBrew.Dataset.PathParameter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Parameters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataBrew.Dataset.PathOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
