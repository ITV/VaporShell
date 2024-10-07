function Add-VSSageMakerDomainUserSettings {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Domain.UserSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::Domain.UserSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html

    .PARAMETER SecurityGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-securitygroups
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER KernelGatewayAppSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-kernelgatewayappsettings
        UpdateType: Mutable
        Type: KernelGatewayAppSettings

    .PARAMETER RStudioServerProAppSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-rstudioserverproappsettings
        UpdateType: Mutable
        Type: RStudioServerProAppSettings

    .PARAMETER RSessionAppSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-rsessionappsettings
        UpdateType: Mutable
        Type: RSessionAppSettings

    .PARAMETER JupyterServerAppSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-jupyterserverappsettings
        UpdateType: Mutable
        Type: JupyterServerAppSettings

    .PARAMETER ExecutionRole
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-executionrole
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SharingSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-sharingsettings
        UpdateType: Mutable
        Type: SharingSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.Domain.UserSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SecurityGroups,
        [parameter(Mandatory = $false)]
        $KernelGatewayAppSettings,
        [parameter(Mandatory = $false)]
        $RStudioServerProAppSettings,
        [parameter(Mandatory = $false)]
        $RSessionAppSettings,
        [parameter(Mandatory = $false)]
        $JupyterServerAppSettings,
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
        $ExecutionRole,
        [parameter(Mandatory = $false)]
        $SharingSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Domain.UserSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
