function Add-VSDataBrewJobEntityDetectorConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::DataBrew::Job.EntityDetectorConfiguration resource property to the template. Configuration of entity detection for a profile job. When undefined, entity detection is disabled.

    .DESCRIPTION
        Adds an AWS::DataBrew::Job.EntityDetectorConfiguration resource property to the template.
Configuration of entity detection for a profile job. When undefined, entity detection is disabled.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-entitydetectorconfiguration.html

    .PARAMETER EntityTypes
        Entity types to detect. Can be any of the following:
+ USA_SSN
+ EMAIL
+ USA_ITIN
+ USA_PASSPORT_NUMBER
+ PHONE_NUMBER
+ USA_DRIVING_LICENSE
+ BANK_ACCOUNT
+ CREDIT_CARD
+ IP_ADDRESS
+ MAC_ADDRESS
+ USA_DEA_NUMBER
+ USA_HCPCS_CODE
+ USA_NATIONAL_PROVIDER_IDENTIFIER
+ USA_NATIONAL_DRUG_CODE
+ USA_HEALTH_INSURANCE_CLAIM_NUMBER
+ USA_MEDICARE_BENEFICIARY_IDENTIFIER
+ USA_CPT_CODE
+ PERSON_NAME
+ DATE
The Entity type group USA_ALL is also supported, and includes all of the above entity types except PERSON_NAME and DATE.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-entitydetectorconfiguration.html#cfn-databrew-job-entitydetectorconfiguration-entitytypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER AllowedStatistics
        Configuration of statistics that are allowed to be run on columns that contain detected entities. When undefined, no statistics will be computed on columns that contain detected entities.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-entitydetectorconfiguration.html#cfn-databrew-job-entitydetectorconfiguration-allowedstatistics
        UpdateType: Mutable
        Type: AllowedStatistics

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataBrew.Job.EntityDetectorConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $EntityTypes,
        [parameter(Mandatory = $false)]
        $AllowedStatistics
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataBrew.Job.EntityDetectorConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
