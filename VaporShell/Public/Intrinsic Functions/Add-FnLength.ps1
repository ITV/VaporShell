function Add-FnLength {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Length" to a resource property

    .DESCRIPTION
        The intrinsic function Fn::Length returns the number of elements within an array or the number of characters in a string.

    .LINK
        https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-length.html

    .PARAMETER Object
        The array or string for which you want to get the length.

    .EXAMPLE
        Add-FnLength -Object (Add-FnSplit -Delimiter "," -SourceString "a,b,c")

        When the template is exported, this will convert to: {"Fn::Length":{"Fn::Split":[",","a,b,c"]}}

    .NOTES
        You can use the following functions in the Fn::Length function:
            Fn::Split
            Fn::GetAZs
            Ref

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Function.Length')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.Split","Vaporshell.Function.GetAZs","Vaporshell.Function.Ref","System.String","System.Object[]"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $Object
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::Length" = $Object
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.Length'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 10 -Compress)`n"
}
