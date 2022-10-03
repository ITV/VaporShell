function Add-VSLightsailDistributionCookieObject {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Distribution.CookieObject resource property to the template. CookieObject is a property of the CacheSettings: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html property. It describes whether an Amazon Lightsail content delivery network (CDN distribution forwards cookies to the origin and, if so, which ones.

    .DESCRIPTION
        Adds an AWS::Lightsail::Distribution.CookieObject resource property to the template.
CookieObject is a property of the CacheSettings: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html property. It describes whether an Amazon Lightsail content delivery network (CDN distribution forwards cookies to the origin and, if so, which ones.

For the cookies that you specify, your distribution caches separate versions of the specified content based on the cookie values in viewer requests.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cookieobject.html

    .PARAMETER CookiesAllowList
        The specific cookies to forward to your distribution's origin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cookieobject.html#cfn-lightsail-distribution-cookieobject-cookiesallowlist
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Option
        Specifies which cookies to forward to the distribution's origin for a cache behavior.
Use one of the following configurations for your distribution:
+  ** all ** - Forwards all cookies to your origin.
+  ** none ** - Doesn’t forward cookies to your origin.
+  ** allow-list ** - Forwards only the cookies that you specify using the CookiesAllowList parameter.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cookieobject.html#cfn-lightsail-distribution-cookieobject-option
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lightsail.Distribution.CookieObject')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CookiesAllowList,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Option
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lightsail.Distribution.CookieObject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
