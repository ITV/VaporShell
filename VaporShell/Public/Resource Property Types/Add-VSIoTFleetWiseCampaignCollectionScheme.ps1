function Add-VSIoTFleetWiseCampaignCollectionScheme {
    <#
    .SYNOPSIS
        Adds an AWS::IoTFleetWise::Campaign.CollectionScheme resource property to the template. 

    .DESCRIPTION
        Adds an AWS::IoTFleetWise::Campaign.CollectionScheme resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-collectionscheme.html

    .PARAMETER TimeBasedCollectionScheme
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-collectionscheme.html#cfn-iotfleetwise-campaign-collectionscheme-timebasedcollectionscheme
        UpdateType: Immutable
        Type: TimeBasedCollectionScheme

    .PARAMETER ConditionBasedCollectionScheme
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-collectionscheme.html#cfn-iotfleetwise-campaign-collectionscheme-conditionbasedcollectionscheme
        UpdateType: Immutable
        Type: ConditionBasedCollectionScheme

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTFleetWise.Campaign.CollectionScheme')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TimeBasedCollectionScheme,
        [parameter(Mandatory = $false)]
        $ConditionBasedCollectionScheme
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTFleetWise.Campaign.CollectionScheme'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
