function Add-VSLightsailDistributionQueryStringObject {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Distribution.QueryStringObject resource property to the template. QueryStringObject is a property of the CacheSettings: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html property. It describes the query string parameters that an Amazon Lightsail content delivery network (CDN distribution to bases caching on.

    .DESCRIPTION
        Adds an AWS::Lightsail::Distribution.QueryStringObject resource property to the template.
QueryStringObject is a property of the CacheSettings: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html property. It describes the query string parameters that an Amazon Lightsail content delivery network (CDN distribution to bases caching on.

For the query strings that you specify, your distribution caches separate versions of the specified content based on the query string values in viewer requests.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-querystringobject.html

    .PARAMETER QueryStringsAllowList
        The specific query strings that the distribution forwards to the origin.
Your distribution caches content based on the specified query strings.
If the option parameter is true, then your distribution forwards all query strings, regardless of what you specify using the QueryStringsAllowList parameter.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-querystringobject.html#cfn-lightsail-distribution-querystringobject-querystringsallowlist
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Option
        Indicates whether the distribution forwards and caches based on query strings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-querystringobject.html#cfn-lightsail-distribution-querystringobject-option
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lightsail.Distribution.QueryStringObject')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $QueryStringsAllowList,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lightsail.Distribution.QueryStringObject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
