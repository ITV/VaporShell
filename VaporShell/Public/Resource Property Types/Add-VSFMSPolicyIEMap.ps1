function Add-VSFMSPolicyIEMap {
    <#
    .SYNOPSIS
        Adds an AWS::FMS::Policy.IEMap resource property to the template. Specifies the AWS account IDs and AWS Organizations organizational units (OUs to include in or exclude from the policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.

    .DESCRIPTION
        Adds an AWS::FMS::Policy.IEMap resource property to the template.
Specifies the AWS account IDs and AWS Organizations organizational units (OUs to include in or exclude from the policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.

This is used for the policy's IncludeMap and ExcludeMap.

You can specify account IDs, OUs, or a combination:

+ Specify account IDs by setting the key to ACCOUNT. For example, the following is a valid map: {“ACCOUNT” : “accountID1”, “accountID2”]}.

+ Specify OUs by setting the key to ORGUNIT. For example, the following is a valid map: {“ORGUNIT” : “ouid111”, “ouid112”]}.

+ Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map: {“ACCOUNT” : “accountID1”, “accountID2”], “ORGUNIT” : “ouid111”, “ouid112”]}.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html

    .PARAMETER ACCOUNT
        The account list for the map.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html#cfn-fms-policy-iemap-account
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ORGUNIT
        The organizational unit list for the map.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html#cfn-fms-policy-iemap-orgunit
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.FMS.Policy.IEMap')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ACCOUNT,
        [parameter(Mandatory = $false)]
        $ORGUNIT
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FMS.Policy.IEMap'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
