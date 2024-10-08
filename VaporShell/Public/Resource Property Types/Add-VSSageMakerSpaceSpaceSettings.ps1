function Add-VSSageMakerSpaceSpaceSettings {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Space.SpaceSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::Space.SpaceSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html

    .PARAMETER JupyterLabAppSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-jupyterlabappsettings
        UpdateType: Mutable
        Type: SpaceJupyterLabAppSettings

    .PARAMETER KernelGatewayAppSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-kernelgatewayappsettings
        UpdateType: Mutable
        Type: KernelGatewayAppSettings

    .PARAMETER CodeEditorAppSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-codeeditorappsettings
        UpdateType: Mutable
        Type: SpaceCodeEditorAppSettings

    .PARAMETER JupyterServerAppSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-jupyterserverappsettings
        UpdateType: Mutable
        Type: JupyterServerAppSettings

    .PARAMETER CustomFileSystems
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-customfilesystems
        UpdateType: Mutable
        Type: List
        ItemType: CustomFileSystem
        DuplicatesAllowed: False

    .PARAMETER AppType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-apptype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SpaceStorageSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-spacestoragesettings
        UpdateType: Mutable
        Type: SpaceStorageSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.Space.SpaceSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $JupyterLabAppSettings,
        [parameter(Mandatory = $false)]
        $KernelGatewayAppSettings,
        [parameter(Mandatory = $false)]
        $CodeEditorAppSettings,
        [parameter(Mandatory = $false)]
        $JupyterServerAppSettings,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.Space.CustomFileSystem"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CustomFileSystems,
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
        $AppType,
        [parameter(Mandatory = $false)]
        $SpaceStorageSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Space.SpaceSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
