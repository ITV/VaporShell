function Add-VSEC2NetworkInsightsAccessScopePathStatementRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkInsightsAccessScope.PathStatementRequest resource property to the template. Describes a path statement.

    .DESCRIPTION
        Adds an AWS::EC2::NetworkInsightsAccessScope.PathStatementRequest resource property to the template.
Describes a path statement.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-pathstatementrequest.html

    .PARAMETER PacketHeaderStatement
        The packet header statement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-pathstatementrequest.html#cfn-ec2-networkinsightsaccessscope-pathstatementrequest-packetheaderstatement
        UpdateType: Immutable
        Type: PacketHeaderStatementRequest

    .PARAMETER ResourceStatement
        The resource statement.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-pathstatementrequest.html#cfn-ec2-networkinsightsaccessscope-pathstatementrequest-resourcestatement
        UpdateType: Immutable
        Type: ResourceStatementRequest

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.NetworkInsightsAccessScope.PathStatementRequest')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PacketHeaderStatement,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkInsightsAccessScope.PathStatementRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
