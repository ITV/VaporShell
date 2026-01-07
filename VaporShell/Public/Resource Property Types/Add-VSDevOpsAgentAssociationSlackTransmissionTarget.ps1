function Add-VSDevOpsAgentAssociationSlackTransmissionTarget {
    <#
    .SYNOPSIS
        Adds an AWS::DevOpsAgent::Association.SlackTransmissionTarget resource property to the template.

    .DESCRIPTION
        Adds an AWS::DevOpsAgent::Association.SlackTransmissionTarget resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-slacktransmissiontarget.html

    .PARAMETER IncidentResponseTarget
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-slacktransmissiontarget.html#cfn-devopsagent-association-slacktransmissiontarget-incidentresponsetarget
        UpdateType: Mutable
        Type: SlackChannel

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DevOpsAgent.Association.SlackTransmissionTarget')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $IncidentResponseTarget

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DevOpsAgent.Association.SlackTransmissionTarget'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
