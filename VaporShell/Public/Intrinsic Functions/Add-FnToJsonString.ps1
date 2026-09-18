function Add-FnToJsonString {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::ToJsonString" to a resource property

    .DESCRIPTION
        The intrinsic function Fn::ToJsonString converts an object or array to its corresponding JSON string.

    .LINK
        https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-ToJsonString.html

    .PARAMETER Object
        The object or array to convert to a JSON string.

    .EXAMPLE
        Add-FnToJsonString -Object @{key1 = "value1"; key2 = "value2"}

        When the template is exported, this will convert to: {"Fn::ToJsonString":{"key1":"value1","key2":"value2"}}

    .NOTES
        You can use any intrinsic function within Fn::ToJsonString.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Function.ToJsonString')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        $Object
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::ToJsonString" = $Object
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.ToJsonString'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 10 -Compress)`n"
}
