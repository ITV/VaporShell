function Add-VSEKSNodegroupLaunchTemplateSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::EKS::Nodegroup.LaunchTemplateSpecification resource property to the template. An object representing a node group launch template specification. The launch template cannot include https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html, https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html, https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html, https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html, or https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html, or the node group deployment or update will fail. For more information about launch templates, see https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html in the Amazon EC2 API Reference. For more information about using launch templates with Amazon EKS, see Launch template support: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html in the *Amazon EKS User Guide*.

    .DESCRIPTION
        Adds an AWS::EKS::Nodegroup.LaunchTemplateSpecification resource property to the template.
An object representing a node group launch template specification. The launch template cannot include https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html, https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html, https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html, https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html, or https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html, or the node group deployment or update will fail. For more information about launch templates, see https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html in the Amazon EC2 API Reference. For more information about using launch templates with Amazon EKS, see Launch template support: https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html in the *Amazon EKS User Guide*.

Specify either name or id, but not both.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html

    .PARAMETER Id
        The ID of the launch template.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-id
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Version
        The version of the launch template to use. If no version is specified, then the template's default version is used.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-version
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Name
        The name of the launch template.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EKS.Nodegroup.LaunchTemplateSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Id,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Version,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EKS.Nodegroup.LaunchTemplateSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
