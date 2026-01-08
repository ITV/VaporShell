$docsPath = (Resolve-Path "$($PSScriptRoot)/..").Path
$basePath = (Resolve-Path "$($docsPath)/..").Path

Push-Location $basePath

# Commenting this out for now to speed up execution
# This should not be required in EP.
# platyPS is part of standard EP developer workstation build as well as CICD server build
#
# if ((Get-PSRepository -Name PSGallery).InstallationPolicy -ne 'Trusted') {
#     Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose:$false
# }
#
# try {
#     $null = Get-PackageProvider -Name Nuget -ForceBootstrap -Verbose:$false -ErrorAction Stop
# } catch {
#     throw
# }
#
# 'platyPS' | ForEach-Object {
#     Write-Host "[$_] Resolving module"
#     Install-Module $_ -Repository PSGallery -Scope CurrentUser -ErrorAction SilentlyContinue
#     Import-Module $_
# }

#region purpose: Unload / load module
if (Get-Module VaporShell*) {
    Remove-Module VaporShell -ErrorAction SilentlyContinue -Verbose:$false
}

Write-Host -ForegroundColor Green "Location set to $($pwd.Path)"
Write-Host -ForegroundColor Green "Building and importing VaporShell"
. .\build.ps1
Import-Module "$($basePath)/BuildOutput/VaporShell" -Force
#endregion#>

Write-Host -ForegroundColor Magenta "Removing existing glossary docs"
Get-ChildItem "$($docsPath)/docs/glossary" -Exclude "index.md" | Remove-Item -Force

# Get all commands and prepare to batch them up. Batch size can be controlled to modify the execution time.
$batchSize = 1000
$vsCommands = (Get-ChildItem "$($basePath)/VaporShell/Public" -Filter '*.ps1' -Recurse).BaseName | Sort-Object
$numberOfBatches = [Math]::Ceiling($vsCommands.Count / $batchSize)

# Work out information for each batch
$batchInfo = @{}
for ($i=0; $i -lt $numberOfBatches; $i++) {
    $id = 'b{0}' -f $i
    $batchInfo[$id] = @{
        StartIndex = $i * $batchSize
        Size       = $batchSize
    }
}

# Last batch size needs to be corrected for the actual number of remaining elements
$batchInfo[$id]['Size'] = $vsCommands.Count - ($numberOfBatches-1) * $batchSize

# prepare each batch with the commands to process
foreach ($key in $batchInfo.Keys | Sort-Object) {
    $batchInfo[$key]['Commands'] = [array]::CreateInstance([object], $batchInfo[$key]['Size'])
    [array]::Copy($vsCommands, $batchInfo[$key]['StartIndex'], $batchInfo[$key]['Commands'], 0, $batchInfo[$key]['Size'])
    Write-Host -ForegroundColor Green ("`nBatch {0} contains {1} commands:`n{2}" -f $key, $batchInfo[$key]['Size'], ($batchInfo[$key]['Commands'] -join ', '))
}

# prepare an array of arrays to process
$batches = [array]::CreateInstance([object], $numberOfBatches)
for ($i=0; $i -lt $numberOfBatches; $i++) {
    $id = 'b{0}' -f $i
    $batches[$i] = $batchInfo[$id]['Commands']
}

# and finally process the batches in parallel
Write-Host -ForegroundColor Green ("Starting parallel processing to build the updated docs {0} in batches of max {1} commands" -f $numberOfBatches, $batchSize)
$batches | ForEach-Object -Parallel {
    $commandBatch = $_
    $docsPath = $using:docsPath
    Import-Module platyPS
    Import-Module "$using:basePath\BuildOutput\VaporShell"
    $commandBatch | ForEach-Object {
        $command = $_
        Write-Host "Working on: $($command)"
        New-MarkdownHelp -Command "VaporShell\$command" -Force -NoMetadata -OutputFolder "$($docsPath)\docs\glossary"
    }
} -ThrottleLimit $numberOfBatches

# Comment this out for now to speed up execution - adding a dummy example to generated commands instead of removing the placeholder here
# $files = Get-ChildItem "$($docsPath)/docs/glossary" -Exclude "index.md"
# foreach ($file in $files) {
#     Write-Host -ForegroundColor Cyan "Updating $($file.BaseName)"

#     $md = Get-Content $file.FullName
#     if ($md -match [RegEx]::Escape('PS C:\> {{ Add example code here }}')) {
#         $updated = [System.Collections.Generic.List[string]]::new()
#         $exStart = [array]::IndexOf($md,'## EXAMPLES')
#         $parStart = [array]::IndexOf($md,'## PARAMETERS')
#         $md[0..($exStart-1)] | ForEach-Object {
#             $updated.Add($_)
#         }
#         $md[$parStart..($md.Count-1)] | ForEach-Object {
#             $updated.Add($_)
#         }
#         $updated | Set-Content $file.FullName -Force
#     }
#     else {
#         $md | Set-Content $file.FullName -Force
#     }
# }

Set-Location $basePath
