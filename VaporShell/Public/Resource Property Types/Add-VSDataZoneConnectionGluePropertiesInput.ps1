function Add-VSDataZoneConnectionGluePropertiesInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::Connection.GluePropertiesInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::Connection.GluePropertiesInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-gluepropertiesinput.html

    .PARAMETER GlueConnectionInput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-gluepropertiesinput.html#cfn-datazone-connection-gluepropertiesinput-glueconnectioninput
        UpdateType: Mutable
        Type: GlueConnectionInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.Connection.GluePropertiesInput')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $GlueConnectionInput

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.Connection.GluePropertiesInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
