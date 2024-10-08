function Add-VSS3ObjectLambdaAccessPointContentTransformation {
    <#
    .SYNOPSIS
        Adds an AWS::S3ObjectLambda::AccessPoint.ContentTransformation resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3ObjectLambda::AccessPoint.ContentTransformation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3objectlambda-accesspoint-contenttransformation.html

    .PARAMETER AwsLambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3objectlambda-accesspoint-contenttransformation.html#cfn-s3objectlambda-accesspoint-contenttransformation-awslambda
        UpdateType: Mutable
        Type: AwsLambda

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3ObjectLambda.AccessPoint.ContentTransformation')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $AwsLambda

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3ObjectLambda.AccessPoint.ContentTransformation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
