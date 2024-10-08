function Add-VSSecurityLakeSubscriberSource {
    <#
    .SYNOPSIS
        Adds an AWS::SecurityLake::Subscriber.Source resource property to the template.

    .DESCRIPTION
        Adds an AWS::SecurityLake::Subscriber.Source resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-source.html

    .PARAMETER AwsLogSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-source.html#cfn-securitylake-subscriber-source-awslogsource
        UpdateType: Mutable
        Type: AwsLogSource

    .PARAMETER CustomLogSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-source.html#cfn-securitylake-subscriber-source-customlogsource
        UpdateType: Mutable
        Type: CustomLogSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SecurityLake.Subscriber.Source')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AwsLogSource,

        [Parameter(Mandatory = $false)]
        $CustomLogSource

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SecurityLake.Subscriber.Source'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
