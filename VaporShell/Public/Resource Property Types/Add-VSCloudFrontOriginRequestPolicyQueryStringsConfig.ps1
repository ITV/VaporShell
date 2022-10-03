function Add-VSCloudFrontOriginRequestPolicyQueryStringsConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::OriginRequestPolicy.QueryStringsConfig resource property to the template. An object that determines whether any URL query strings in viewer requests (and if so, which query strings are included in requests that CloudFront sends to the origin.

    .DESCRIPTION
        Adds an AWS::CloudFront::OriginRequestPolicy.QueryStringsConfig resource property to the template.
An object that determines whether any URL query strings in viewer requests (and if so, which query strings are included in requests that CloudFront sends to the origin.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-querystringsconfig.html

    .PARAMETER QueryStringBehavior
        Determines whether any URL query strings in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:
+  none – Query strings in viewer requests are not included in requests that CloudFront sends to the origin. Even when this field is set to none, any query strings that are listed in a CachePolicy *are* included in origin requests.
+  whitelist – The query strings in viewer requests that are listed in the QueryStringNames type are included in requests that CloudFront sends to the origin.
+  all – All query strings in viewer requests are included in requests that CloudFront sends to the origin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-querystringsconfig.html#cfn-cloudfront-originrequestpolicy-querystringsconfig-querystringbehavior
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER QueryStrings
        Contains a list of query string names.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-querystringsconfig.html#cfn-cloudfront-originrequestpolicy-querystringsconfig-querystrings
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudFront.OriginRequestPolicy.QueryStringsConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $QueryStringBehavior,
        [parameter(Mandatory = $false)]
        $QueryStrings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.OriginRequestPolicy.QueryStringsConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
