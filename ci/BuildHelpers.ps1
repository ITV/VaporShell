# Build helper functions for VaporShell
# Replaces the legacy Azure Pipelines gist dependency

$env:_BuildStart = Get-Date -Format 'o'

function Write-BuildLog {
    [CmdletBinding()]
    param(
        [parameter(Mandatory, Position = 0, ValueFromRemainingArguments, ValueFromPipeline)]
        [System.Object]
        $Message,
        [parameter()]
        [Alias('c', 'Command')]
        [Switch]
        $Cmd,
        [parameter()]
        [Alias('w')]
        [Switch]
        $Warning,
        [parameter()]
        [Alias('s', 'e')]
        [Switch]
        $Severe,
        [parameter()]
        [Alias('x', 'nd', 'n')]
        [Switch]
        $Clean
    )
    Begin {
        if ($Severe) { $fg = 'Red' }
        elseif ($Warning) { $fg = 'Yellow' }
        elseif ($Cmd) { $fg = 'Magenta' }
        else { $fg = 'Gray' }
    }
    Process {
        $date = "[$((Get-Date).ToString("HH:mm:ss")) +$(((Get-Date) - (Get-Date $env:_BuildStart)).ToString())]"
        $fmtMsg = if ($Clean) {
            $Message -split "[\r\n]" | Where-Object { $_ }
        }
        else {
            $Message -split "[\r\n]" | Where-Object { $_ } | ForEach-Object { "$date $_" }
        }
        Write-Host -ForegroundColor $fg $($fmtMsg -join "`n")
    }
}

function Write-BuildError {
    param(
        [parameter(Mandatory, Position = 0, ValueFromRemainingArguments, ValueFromPipeline)]
        [System.String]
        $Message
    )
    Process {
        Write-Error $Message
    }
}

function Add-Heading {
    param(
        [parameter(Position = 0, ValueFromRemainingArguments)]
        [String]
        $Title
    )
    $date = "[$((Get-Date).ToString("HH:mm:ss")) +$(((Get-Date) - (Get-Date $env:_BuildStart)).ToString())]"
    Write-Host -ForegroundColor Cyan "`n$date $Title"
}

function Get-PSGalleryVersion {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory, Position = 0)]
        [String]
        $Module
    )
    Process {
        $Uri = "https://www.powershellgallery.com/api/v2/Packages?`$filter=Id eq '$Module' and IsLatestVersion"
        Invoke-RestMethod $URI |
            Select-Object @{n = 'Name'; ex = { $_.title.('#text') } },
            @{n = 'Version'; ex = {
                    if ($_.properties.NormalizedVersion) { $_.properties.NormalizedVersion }
                    else { $_.properties.Version }
                }
            }
    }
}

function Get-NextModuleVersion {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory)]
        [AllowNull()]
        [AllowEmptyString()]
        [string]
        $GalleryVersion,
        [Parameter(Mandatory)]
        [string]
        $ManifestVersion
    )
    Process {
        $dateString = Get-Date -Format 'yyyyMMdd'
        if ([string]::IsNullOrEmpty($GalleryVersion)) {
            $GalleryVersion = "0.0.1.$dateString"
        }
        if ([System.Version]$ManifestVersion -gt [System.Version]$GalleryVersion) {
            $split = $ManifestVersion.Split('.')
        }
        else {
            $split = $GalleryVersion.Split('.')
            $split[2] = [string]([int]$split[2] + 1)
        }
        '{0}.{1}.{2}.{3}' -f $split[0], $split[1], $split[2], $dateString
    }
}
