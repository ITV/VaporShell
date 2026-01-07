function Add-VSLambdaCapacityProviderInstanceRequirements {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::CapacityProvider.InstanceRequirements resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lambda::CapacityProvider.InstanceRequirements resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-capacityprovider-instancerequirements.html

    .PARAMETER AllowedInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-capacityprovider-instancerequirements.html#cfn-lambda-capacityprovider-instancerequirements-allowedinstancetypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ExcludedInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-capacityprovider-instancerequirements.html#cfn-lambda-capacityprovider-instancerequirements-excludedinstancetypes
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Architectures
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-capacityprovider-instancerequirements.html#cfn-lambda-capacityprovider-instancerequirements-architectures
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lambda.CapacityProvider.InstanceRequirements')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AllowedInstanceTypes,

        [Parameter(Mandatory = $false)]
        $ExcludedInstanceTypes,

        [Parameter(Mandatory = $false)]
        $Architectures

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.CapacityProvider.InstanceRequirements'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
