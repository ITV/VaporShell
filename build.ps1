[CmdletBinding()]
param(
    # Process-specific parameters
    [Parameter()]
    [string]
    $ModuleName = 'VaporShell',
    [Parameter()]
    [hashtable]
    $Dependencies = @{
        Configuration = '1.3.1'
        InvokeBuild   = '5.5.2'
    },
    [Parameter()]
    [Switch]
    $NoUpdate,
    #region: Invoke-Build parameters
    [Parameter()]
    [ValidateSet('Init', 'Clean', 'Build', 'DotnetOnly', 'Test', 'Analyze', 'Deploy', 'Full')]
    [string[]]
    $Task,
    [Parameter()]
    [object]
    $File,
    [Parameter()]
    [switch]
    $Safe,
    [Parameter()]
    [switch]
    $Summary
    #endregion: Invoke-Build parameters
)

# Import build helper functions
. (Join-Path $PSScriptRoot 'ci/BuildHelpers.ps1')

Add-Heading "Setting PSGallery InstallationPolicy to 'Trusted'"
if ((Get-PSRepository -Name PSGallery).InstallationPolicy -ne 'Trusted') {
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose:$false
}
Add-Heading "Setting `$PSDefaultParameterValues for *-Module functions"
$PSDefaultParameterValues = @{
    '*-Module:Verbose'                  = $false
    '*-Module:Force'                    = $true
    'Import-Module:ErrorAction'         = 'Stop'
    'Install-Module:AcceptLicense'      = $true
    'Install-Module:AllowClobber'       = $true
    'Install-Module:Confirm'            = $false
    'Install-Module:ErrorAction'        = 'Stop'
    'Install-Module:Repository'         = 'PSGallery'
    'Install-Module:Scope'              = 'CurrentUser'
    'Install-Module:SkipPublisherCheck' = $true
}
Add-Heading 'Resolving module dependencies'
$moduleDependencies = @()
foreach ($module in $Dependencies.Keys) {
    $moduleDependencies += @{
        Name           = $module
        MinimumVersion = $Dependencies[$module]
    }
}
(Import-PowerShellDataFile ([System.IO.Path]::Combine($PSScriptRoot, $ModuleName, "$ModuleName.psd1"))).RequiredModules | ForEach-Object {
    $item = $_
    if ($item -is [hashtable]) {
        $hash = @{
            Name = $item['ModuleName']
        }
        if ($_.ContainsKey('ModuleVersion')) {
            $hash['RequiredVersion'] = $item['ModuleVersion']
        }
        $moduleDependencies += $hash
    } else {
        if ($Dependencies.Keys -notcontains $item) {
            $moduleDependencies += @{
                Name = $item
            }
        }
    }
}
try {
    $null = Get-PackageProvider -Name Nuget -ForceBootstrap -Verbose:$false -ErrorAction Stop
} catch {
    throw
}
foreach ($item in $moduleDependencies) {
    Write-BuildLog "[$($item['Name'])] Resolving"
    try {
        if ($imported = Get-Module $item['Name']) {
            Write-BuildLog "[$($item['Name'])] Removing imported module"
            $imported | Remove-Module
        }
        Import-Module @item
    } catch {
        Write-BuildLog "[$($item['Name'])] Installing missing module"
        Install-Module @item
        Import-Module @item
    }
}

Add-Heading 'Executing Invoke-Build'
Invoke-Build -ModuleName $ModuleName @PSBoundParameters
