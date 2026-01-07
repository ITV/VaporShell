function Add-VSS3ExpressAccessPointScope {
    <#
    .SYNOPSIS
        Adds an AWS::S3Express::AccessPoint.Scope resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3Express::AccessPoint.Scope resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-accesspoint-scope.html

    .PARAMETER Permissions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-accesspoint-scope.html#cfn-s3express-accesspoint-scope-permissions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Prefixes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-accesspoint-scope.html#cfn-s3express-accesspoint-scope-prefixes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3Express.AccessPoint.Scope')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Permissions,

        [Parameter(Mandatory = $false)]
        $Prefixes

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3Express.AccessPoint.Scope'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
