function Add-VSServiceCatalogCloudFormationProductConnectionParameters {
    <#
    .SYNOPSIS
        Adds an AWS::ServiceCatalog::CloudFormationProduct.ConnectionParameters resource property to the template. 

    .DESCRIPTION
        Adds an AWS::ServiceCatalog::CloudFormationProduct.ConnectionParameters resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-sourceconnection-connectionparameters.html

    .PARAMETER CodeStar
        Type: CodeStarParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-sourceconnection-connectionparameters.html#cfn-servicecatalog-cloudformationproduct-sourceconnection-connectionparameters-codestar
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ServiceCatalog.CloudFormationProduct.ConnectionParameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CodeStar
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ServiceCatalog.CloudFormationProduct.ConnectionParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
