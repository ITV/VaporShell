function Add-VSAppRunnerServiceCodeConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::AppRunner::Service.CodeConfiguration resource property to the template. Describes the configuration that AWS App Runner uses to build and run an App Runner service from a source code repository.

    .DESCRIPTION
        Adds an AWS::AppRunner::Service.CodeConfiguration resource property to the template.
Describes the configuration that AWS App Runner uses to build and run an App Runner service from a source code repository.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfiguration.html

    .PARAMETER ConfigurationSource
        The source of the App Runner configuration. Values are interpreted as follows:
+  REPOSITORY – App Runner reads configuration values from the apprunner.yaml file in the source code repository and ignores CodeConfigurationValues.
+  API – App Runner uses configuration values provided in CodeConfigurationValues and ignores the apprunner.yaml file in the source code repository.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfiguration.html#cfn-apprunner-service-codeconfiguration-configurationsource
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CodeConfigurationValues
        The basic configuration for building and running the App Runner service. Use it to quickly launch an App Runner service without providing a apprunner.yaml file in the source code repository or ignoring the file if it exists.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfiguration.html#cfn-apprunner-service-codeconfiguration-codeconfigurationvalues
        UpdateType: Mutable
        Type: CodeConfigurationValues

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppRunner.Service.CodeConfiguration')]
    [cmdletbinding()]
    Param
    (
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
        $ConfigurationSource,
        [parameter(Mandatory = $false)]
        $CodeConfigurationValues
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppRunner.Service.CodeConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
