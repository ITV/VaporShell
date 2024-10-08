function Add-VSGammaDilithiumJobDefinitionEksVolume {
    <#
    .SYNOPSIS
        Adds an AWS::GammaDilithium::JobDefinition.EksVolume resource property to the template.

    .DESCRIPTION
        Adds an AWS::GammaDilithium::JobDefinition.EksVolume resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gammadilithium-jobdefinition-eksvolume.html

    .PARAMETER Secret
        Type: EksSecret
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gammadilithium-jobdefinition-eksvolume.html#cfn-gammadilithium-jobdefinition-eksvolume-secret
        UpdateType: Mutable

    .PARAMETER EmptyDir
        Type: EksEmptyDir
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gammadilithium-jobdefinition-eksvolume.html#cfn-gammadilithium-jobdefinition-eksvolume-emptydir
        UpdateType: Mutable

    .PARAMETER HostPath
        Type: EksHostPath
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gammadilithium-jobdefinition-eksvolume.html#cfn-gammadilithium-jobdefinition-eksvolume-hostpath
        UpdateType: Mutable

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gammadilithium-jobdefinition-eksvolume.html#cfn-gammadilithium-jobdefinition-eksvolume-name
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.GammaDilithium.JobDefinition.EksVolume')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Secret,

        [Parameter(Mandatory = $false)]
        $EmptyDir,

        [Parameter(Mandatory = $false)]
        $HostPath,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GammaDilithium.JobDefinition.EksVolume'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
