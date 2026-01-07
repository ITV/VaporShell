function Add-VSEC2InstanceEnaSrdSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::Instance.EnaSrdSpecification resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::Instance.EnaSrdSpecification resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-enasrdspecification.html

    .PARAMETER EnaSrdEnabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-enasrdspecification.html#cfn-ec2-instance-enasrdspecification-enasrdenabled
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER EnaSrdUdpSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-enasrdspecification.html#cfn-ec2-instance-enasrdspecification-enasrdudpspecification
        UpdateType: Immutable
        Type: EnaSrdUdpSpecification

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.Instance.EnaSrdSpecification')]
    [CmdletBinding()]

    Param
    (
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
        $EnaSrdEnabled,

        [Parameter(Mandatory = $false)]
        $EnaSrdUdpSpecification

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.Instance.EnaSrdSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
