function Add-VSRTBFabricResponderGatewayAutoScalingGroupsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::ResponderGateway.AutoScalingGroupsConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::ResponderGateway.AutoScalingGroupsConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-autoscalinggroupsconfiguration.html

    .PARAMETER AutoScalingGroupNameList
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-autoscalinggroupsconfiguration.html#cfn-rtbfabric-respondergateway-autoscalinggroupsconfiguration-autoscalinggroupnamelist
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER RoleArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-autoscalinggroupsconfiguration.html#cfn-rtbfabric-respondergateway-autoscalinggroupsconfiguration-rolearn
        UpdateType: Conditional
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.ResponderGateway.AutoScalingGroupsConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $AutoScalingGroupNameList,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RoleArn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.ResponderGateway.AutoScalingGroupsConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
