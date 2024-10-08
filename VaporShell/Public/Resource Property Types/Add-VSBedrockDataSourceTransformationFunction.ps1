function Add-VSBedrockDataSourceTransformationFunction {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataSource.TransformationFunction resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataSource.TransformationFunction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-transformationfunction.html

    .PARAMETER TransformationLambdaConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-transformationfunction.html#cfn-bedrock-datasource-transformationfunction-transformationlambdaconfiguration
        UpdateType: Mutable
        Type: TransformationLambdaConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataSource.TransformationFunction')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $TransformationLambdaConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataSource.TransformationFunction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
