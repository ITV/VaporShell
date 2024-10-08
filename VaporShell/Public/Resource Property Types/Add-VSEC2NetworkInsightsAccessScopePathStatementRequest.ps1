function Add-VSEC2NetworkInsightsAccessScopePathStatementRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkInsightsAccessScope.PathStatementRequest resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::NetworkInsightsAccessScope.PathStatementRequest resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-pathstatementrequest.html

    .PARAMETER ResourceStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-pathstatementrequest.html#cfn-ec2-networkinsightsaccessscope-pathstatementrequest-resourcestatement
        UpdateType: Immutable
        Type: ResourceStatementRequest

    .PARAMETER PacketHeaderStatement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-pathstatementrequest.html#cfn-ec2-networkinsightsaccessscope-pathstatementrequest-packetheaderstatement
        UpdateType: Immutable
        Type: PacketHeaderStatementRequest

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.NetworkInsightsAccessScope.PathStatementRequest')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ResourceStatement,

        [Parameter(Mandatory = $false)]
        $PacketHeaderStatement

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
