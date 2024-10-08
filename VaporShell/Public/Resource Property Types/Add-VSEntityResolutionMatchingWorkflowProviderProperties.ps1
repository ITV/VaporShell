function Add-VSEntityResolutionMatchingWorkflowProviderProperties {
    <#
    .SYNOPSIS
        Adds an AWS::EntityResolution::MatchingWorkflow.ProviderProperties resource property to the template. 

    .DESCRIPTION
        Adds an AWS::EntityResolution::MatchingWorkflow.ProviderProperties resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-providerproperties.html

    .PARAMETER IntermediateSourceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-providerproperties.html#cfn-entityresolution-matchingworkflow-providerproperties-intermediatesourceconfiguration
        UpdateType: Mutable
        Type: IntermediateSourceConfiguration

    .PARAMETER ProviderServiceArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-providerproperties.html#cfn-entityresolution-matchingworkflow-providerproperties-providerservicearn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ProviderConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-providerproperties.html#cfn-entityresolution-matchingworkflow-providerproperties-providerconfiguration
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EntityResolution.MatchingWorkflow.ProviderProperties')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $IntermediateSourceConfiguration,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ProviderServiceArn,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $ProviderConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EntityResolution.MatchingWorkflow.ProviderProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
