function Add-VSSageMakerClusterClusterKubernetesConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Cluster.ClusterKubernetesConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Cluster.ClusterKubernetesConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterkubernetesconfig.html

    .PARAMETER Labels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterkubernetesconfig.html#cfn-sagemaker-cluster-clusterkubernetesconfig-labels
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Taints
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterkubernetesconfig.html#cfn-sagemaker-cluster-clusterkubernetesconfig-taints
        UpdateType: Mutable
        Type: List
        ItemType: ClusterKubernetesTaint
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Cluster.ClusterKubernetesConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Labels,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.Cluster.ClusterKubernetesTaint"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Taints

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Cluster.ClusterKubernetesConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
