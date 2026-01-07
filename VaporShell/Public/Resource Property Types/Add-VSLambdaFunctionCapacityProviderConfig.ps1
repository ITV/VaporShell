function Add-VSLambdaFunctionCapacityProviderConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::Function.CapacityProviderConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lambda::Function.CapacityProviderConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-capacityproviderconfig.html

    .PARAMETER LambdaManagedInstancesCapacityProviderConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-capacityproviderconfig.html#cfn-lambda-function-capacityproviderconfig-lambdamanagedinstancescapacityproviderconfig
        UpdateType: Mutable
        Type: LambdaManagedInstancesCapacityProviderConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lambda.Function.CapacityProviderConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $LambdaManagedInstancesCapacityProviderConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.Function.CapacityProviderConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
