function Add-VSEC2NetworkInsightsAccessScopeThroughResourcesStatementRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkInsightsAccessScope.ThroughResourcesStatementRequest resource property to the template. Describes a through resource statement.

    .DESCRIPTION
        Adds an AWS::EC2::NetworkInsightsAccessScope.ThroughResourcesStatementRequest resource property to the template.
Describes a through resource statement.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-throughresourcesstatementrequest.html

    .PARAMETER ResourceStatement
        The resource statement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-throughresourcesstatementrequest.html#cfn-ec2-networkinsightsaccessscope-throughresourcesstatementrequest-resourcestatement
        UpdateType: Immutable
        Type: ResourceStatementRequest

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.NetworkInsightsAccessScope.ThroughResourcesStatementRequest')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ResourceStatement
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkInsightsAccessScope.ThroughResourcesStatementRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
