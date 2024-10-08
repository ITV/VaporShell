function Add-VSEMRServerlessApplicationConfigurationObject {
    <#
    .SYNOPSIS
        Adds an AWS::EMRServerless::Application.ConfigurationObject resource property to the template.

    .DESCRIPTION
        Adds an AWS::EMRServerless::Application.ConfigurationObject resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-configurationobject.html

    .PARAMETER Classification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-configurationobject.html#cfn-emrserverless-application-configurationobject-classification
        UpdateType: Conditional
        PrimitiveType: String

    .PARAMETER Properties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-configurationobject.html#cfn-emrserverless-application-configurationobject-properties
        UpdateType: Conditional
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Configurations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-configurationobject.html#cfn-emrserverless-application-configurationobject-configurations
        UpdateType: Conditional
        Type: List
        ItemType: ConfigurationObject
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EMRServerless.Application.ConfigurationObject')]
    [cmdletbinding()]

    Param
    (
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
        $Classification,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Properties,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EMRServerless.Application.ConfigurationObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Configurations

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMRServerless.Application.ConfigurationObject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
