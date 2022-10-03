function Add-VSLightsailDistributionCacheBehavior {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Distribution.CacheBehavior resource property to the template. CacheBehavior is a property of the AWS::Lightsail::Distribution: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html resource. It describes the default cache behavior of an Amazon Lightsail content delivery network (CDN distribution.

    .DESCRIPTION
        Adds an AWS::Lightsail::Distribution.CacheBehavior resource property to the template.
CacheBehavior is a property of the AWS::Lightsail::Distribution: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html resource. It describes the default cache behavior of an Amazon Lightsail content delivery network (CDN distribution.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehavior.html

    .PARAMETER Behavior
        The cache behavior of the distribution.
The following cache behaviors can be specified:
+  ** cache ** - This option is best for static sites. When specified, your distribution caches and serves your entire website as static content. This behavior is ideal for websites with static content that doesn't change depending on who views it, or for websites that don't use cookies, headers, or query strings to personalize content.
+  ** dont-cache ** - This option is best for sites that serve a mix of static and dynamic content. When specified, your distribution caches and serves only the content that is specified in the distribution’s CacheBehaviorPerPath parameter. This behavior is ideal for websites or web applications that use cookies, headers, and query strings to personalize content for individual users.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehavior.html#cfn-lightsail-distribution-cachebehavior-behavior
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lightsail.Distribution.CacheBehavior')]
    [cmdletbinding()]
    Param
    (
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
        $Behavior
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lightsail.Distribution.CacheBehavior'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
