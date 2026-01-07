function Add-VSDataZoneConnectionGlueConnectionInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::Connection.GlueConnectionInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::Connection.GlueConnectionInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html

    .PARAMETER PythonProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-pythonproperties
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER AuthenticationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-authenticationconfiguration
        UpdateType: Mutable
        Type: AuthenticationConfigurationInput

    .PARAMETER SparkProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-sparkproperties
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Description
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-description
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ConnectionType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-connectiontype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MatchCriteria
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-matchcriteria
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER PhysicalConnectionRequirements
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-physicalconnectionrequirements
        UpdateType: Mutable
        Type: PhysicalConnectionRequirements

    .PARAMETER ConnectionProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-connectionproperties
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER AthenaProperties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-athenaproperties
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER ValidateForComputeEnvironments
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-validateforcomputeenvironments
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ValidateCredentials
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-validatecredentials
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueconnectioninput.html#cfn-datazone-connection-glueconnectioninput-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.Connection.GlueConnectionInput')]
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","ValidateCredentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","ValidateCredentials")]

    Param
    (
        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $PythonProperties,

        [Parameter(Mandatory = $false)]
        $AuthenticationConfiguration,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $SparkProperties,

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
        $Description,

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
        $ConnectionType,

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
        $MatchCriteria,

        [Parameter(Mandatory = $false)]
        $PhysicalConnectionRequirements,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $ConnectionProperties,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $AthenaProperties,

        [Parameter(Mandatory = $false)]
        $ValidateForComputeEnvironments,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ValidateCredentials,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.Connection.GlueConnectionInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
