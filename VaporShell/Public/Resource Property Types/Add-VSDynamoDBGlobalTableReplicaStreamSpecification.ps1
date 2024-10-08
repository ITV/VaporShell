function Add-VSDynamoDBGlobalTableReplicaStreamSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::GlobalTable.ReplicaStreamSpecification resource property to the template. 

    .DESCRIPTION
        Adds an AWS::DynamoDB::GlobalTable.ReplicaStreamSpecification resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicastreamspecification.html

    .PARAMETER ResourcePolicy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicastreamspecification.html#cfn-dynamodb-globaltable-replicastreamspecification-resourcepolicy
        UpdateType: Mutable
        Type: ResourcePolicy

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.GlobalTable.ReplicaStreamSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ResourcePolicy
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.GlobalTable.ReplicaStreamSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
