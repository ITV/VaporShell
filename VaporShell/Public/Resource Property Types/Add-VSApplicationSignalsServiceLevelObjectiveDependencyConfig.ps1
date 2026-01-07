function Add-VSApplicationSignalsServiceLevelObjectiveDependencyConfig {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationSignals::ServiceLevelObjective.DependencyConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApplicationSignals::ServiceLevelObjective.DependencyConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-dependencyconfig.html

    .PARAMETER DependencyKeyAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-dependencyconfig.html#cfn-applicationsignals-servicelevelobjective-dependencyconfig-dependencykeyattributes
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER DependencyOperationName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-dependencyconfig.html#cfn-applicationsignals-servicelevelobjective-dependencyconfig-dependencyoperationname
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApplicationSignals.ServiceLevelObjective.DependencyConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [System.Collections.Hashtable]
        $DependencyKeyAttributes,

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
        $DependencyOperationName

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationSignals.ServiceLevelObjective.DependencyConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
