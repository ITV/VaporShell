function Add-VSLightsailDistributionCacheBehaviorPerPath {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Distribution.CacheBehaviorPerPath resource property to the template. CacheBehaviorPerPath is a property of the AWS::Lightsail::Distribution: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html resource. It describes the per-path cache behavior of an Amazon Lightsail content delivery network (CDN distribution.

    .DESCRIPTION
        Adds an AWS::Lightsail::Distribution.CacheBehaviorPerPath resource property to the template.
CacheBehaviorPerPath is a property of the AWS::Lightsail::Distribution: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-distribution.html resource. It describes the per-path cache behavior of an Amazon Lightsail content delivery network (CDN distribution.

Use a per-path cache behavior to override the default cache behavior of a distribution, or to add an exception to it. For example, if you set the CacheBehavior to cache, you can use a per-path cache behavior to specify a directory, file, or file type that your distribution will cache. If you don’t want your distribution to cache a specified directory, file, or file type, set the per-path cache behavior to dont-cache.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehaviorperpath.html

    .PARAMETER Behavior
        The cache behavior for the specified path.
You can specify one of the following per-path cache behaviors:
+  ** cache ** - This behavior caches the specified path.
+  ** dont-cache ** - This behavior doesn't cache the specified path.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehaviorperpath.html#cfn-lightsail-distribution-cachebehaviorperpath-behavior
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Path
        The path to a directory or file to cache, or not cache. Use an asterisk symbol to specify wildcard directories path/to/assets/*, and file types *.html, *jpg, *js. Directories and file paths are case-sensitive.
Examples:
+ Specify the following to cache all files in the document root of an Apache web server running on a instance.
var/www/html/
+ Specify the following file to cache only the index page in the document root of an Apache web server.
var/www/html/index.html
+ Specify the following to cache only the .html files in the document root of an Apache web server.
var/www/html/*.html
+ Specify the following to cache only the .jpg, .png, and .gif files in the images sub-directory of the document root of an Apache web server.
var/www/html/images/*.jpg
var/www/html/images/*.png
var/www/html/images/*.gif
Specify the following to cache all files in the images subdirectory of the document root of an Apache web server.
var/www/html/images/

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachebehaviorperpath.html#cfn-lightsail-distribution-cachebehaviorperpath-path
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lightsail.Distribution.CacheBehaviorPerPath')]
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
        $Behavior,
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
        $Path
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lightsail.Distribution.CacheBehaviorPerPath'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
