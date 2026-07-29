function ProcessRequest {
    <#
    .SYNOPSIS
    Receives AWS SDK requests and sends them to the processor function.
    #>
    [cmdletbinding()]
    param
    (
        [parameter(Mandatory = $false, Position = 0)]
        [String]
        $ParameterSetName,
        [parameter(Mandatory = $false, Position = 1)]
        [String]
        $ProfileName = $env:AWS_PROFILE,
        [parameter(Mandatory = $true, Position = 2)]
        [String]
        $Method,
        [parameter(Mandatory = $true, Position = 3)]
        $Request,
        [parameter(Mandatory = $false, Position = 4)]
        [String]
        $Expand
    )
    process {
        ProcessRequest4 @PSBoundParameters
    }
}
