function Add-VSCloudFrontContinuousDeploymentPolicyContinuousDeploymentPolicyConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudFront::ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig.html

    .PARAMETER Type
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SingleHeaderPolicyConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig-singleheaderpolicyconfig
        UpdateType: Mutable
        Type: SingleHeaderPolicyConfig

    .PARAMETER Enabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER StagingDistributionDnsNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig-stagingdistributiondnsnames
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER TrafficConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig-trafficconfig
        UpdateType: Mutable
        Type: TrafficConfig

    .PARAMETER SingleWeightPolicyConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig.html#cfn-cloudfront-continuousdeploymentpolicy-continuousdeploymentpolicyconfig-singleweightpolicyconfig
        UpdateType: Mutable
        Type: SingleWeightPolicyConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudFront.ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type,

        [Parameter(Mandatory = $false)]
        $SingleHeaderPolicyConfig,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled,

        [Parameter(Mandatory = $true)]
        $StagingDistributionDnsNames,

        [Parameter(Mandatory = $false)]
        $TrafficConfig,

        [Parameter(Mandatory = $false)]
        $SingleWeightPolicyConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
