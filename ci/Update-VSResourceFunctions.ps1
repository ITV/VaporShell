function Update-VSResourceFunctions {
    <#
    .SYNOPSIS
        Updates the Resource and Property Type functions using CloudFormation Resource Provider Schemas.

    .DESCRIPTION
        Downloads the per-resource JSON Schema files from the CloudFormation registry for each region,
        merges them to get maximum resource coverage, then generates PowerShell functions for each
        resource and property type.

        Uses the new schema format (https://schema.cloudformation.<region>.amazonaws.com/CloudformationSchema.zip)
        instead of the deprecated monolithic CloudFormation Resource Specification.

    .FUNCTIONALITY
        Vaporshell
    #>

    [CmdletBinding()]
    param()

    $vsPath = (Resolve-Path "$PSScriptRoot/../VaporShell").Path
    $vsTypeFuncPath = (Resolve-Path "$vsPath/Public/Resource Types").Path
    $vsPropFuncPath = (Resolve-Path "$vsPath/Public/Resource Property Types").Path

    # All regions that publish CloudFormation Resource Provider Schemas
    $regions = @(
        'us-east-1'
        'us-east-2'
        'us-west-1'
        'us-west-2'
        'af-south-1'
        'ap-east-1'
        'ap-south-1'
        'ap-south-2'
        'ap-southeast-1'
        'ap-southeast-2'
        'ap-southeast-3'
        'ap-southeast-4'
        'ap-southeast-5'
        'ap-northeast-1'
        'ap-northeast-2'
        'ap-northeast-3'
        'ca-central-1'
        'ca-west-1'
        'eu-central-1'
        'eu-central-2'
        'eu-west-1'
        'eu-west-2'
        'eu-west-3'
        'eu-north-1'
        'eu-south-1'
        'eu-south-2'
        'il-central-1'
        'me-central-1'
        'me-south-1'
        'sa-east-1'
    )

    # China regions use different TLD
    $chinaRegions = @(
        @{ Region = 'cn-north-1'; Suffix = 'amazonaws.com.cn' }
        @{ Region = 'cn-northwest-1'; Suffix = 'amazonaws.com.cn' }
    )

    # GovCloud regions
    $govRegions = @(
        'us-gov-east-1'
        'us-gov-west-1'
    )

    $tempPath = Join-Path ([System.IO.Path]::GetTempPath()) "VaporShell-SchemaDownload-$(Get-Date -Format 'yyyyMMddHHmmss')"
    New-Item -ItemType Directory -Path $tempPath -Force | Out-Null

    # Collect all resource and property types across regions
    $final = @{
        ResourceTypes = @{}
        PropertyTypes = @{}
    }

    # Helper to download and process a schema zip
    function Import-SchemaZip {
        param(
            [string]$Url,
            [string]$RegionName,
            [string]$TempBasePath
        )

        $zipPath = Join-Path $TempBasePath "$RegionName.zip"
        $extractPath = Join-Path $TempBasePath $RegionName

        try {
            Write-Host "Downloading CloudFormation schemas from region: $RegionName"
            Invoke-WebRequest -Uri $Url -OutFile $zipPath -UseBasicParsing -ErrorAction Stop

            Write-Host "Extracting schemas for region: $RegionName"
            if (Test-Path $extractPath) {
                Remove-Item $extractPath -Recurse -Force
            }
            Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

            # Process each schema file
            $schemaFiles = Get-ChildItem -Path $extractPath -Filter '*.json' -File
            $newResourceCount = 0
            $newPropertyCount = 0

            foreach ($schemaFile in $schemaFiles) {
                try {
                    $schema = Get-Content $schemaFile.FullName -Raw | ConvertFrom-Json -ErrorAction Stop

                    # Skip non-AWS resources (third-party types)
                    if ($schema.typeName -notmatch '^AWS::') {
                        continue
                    }

                    $converted = ConvertFrom-ProviderSchema -SchemaObject $schema

                    # Add resource type if not already present
                    if ($converted.ResourceType -and $converted.ResourceType.Name -and
                        -not $final['ResourceTypes'].ContainsKey($converted.ResourceType.Name)) {
                        $final['ResourceTypes'][$converted.ResourceType.Name] = $converted.ResourceType
                        $newResourceCount++
                    }

                    # Add property types if not already present
                    foreach ($ptKey in $converted.PropertyTypes.Keys) {
                        if (-not $final['PropertyTypes'].ContainsKey($ptKey)) {
                            $final['PropertyTypes'][$ptKey] = $converted.PropertyTypes[$ptKey]
                            $newPropertyCount++
                        }
                    }
                } catch {
                    Write-Verbose "Failed to process schema file: $($schemaFile.Name) - $_"
                }
            }

            if ($newResourceCount -gt 0) {
                Write-Host -ForegroundColor Green "Found $newResourceCount new resource types in region: $RegionName"
            }
            if ($newPropertyCount -gt 0) {
                Write-Host -ForegroundColor Magenta "Found $newPropertyCount new property types in region: $RegionName"
            }
        } catch {
            Write-Host -ForegroundColor Yellow "WARNING: Failed to download/process schemas from region: $RegionName - $_"
        } finally {
            # Clean up zip to save disk space
            if (Test-Path $zipPath) {
                Remove-Item $zipPath -Force -ErrorAction SilentlyContinue
            }
        }
    }

    # Process us-east-1 first as the baseline (has the most resources)
    $baseUrl = 'https://schema.cloudformation.us-east-1.amazonaws.com/CloudformationSchema.zip'
    Import-SchemaZip -Url $baseUrl -RegionName 'us-east-1' -TempBasePath $tempPath

    Write-Host "Baseline: $($final['ResourceTypes'].Count) resource types, $($final['PropertyTypes'].Count) property types from us-east-1"

    # Process remaining commercial regions
    foreach ($region in $regions | Where-Object { $_ -ne 'us-east-1' }) {
        $url = "https://schema.cloudformation.$region.amazonaws.com/CloudformationSchema.zip"
        Import-SchemaZip -Url $url -RegionName $region -TempBasePath $tempPath
    }

    # Process China regions
    foreach ($entry in $chinaRegions) {
        $url = "https://schema.cloudformation.$($entry.Region).$($entry.Suffix)/CloudformationSchema.zip"
        Import-SchemaZip -Url $url -RegionName $entry.Region -TempBasePath $tempPath
    }

    # Process GovCloud regions
    foreach ($region in $govRegions) {
        $url = "https://schema.cloudformation.$region.amazonaws.com/CloudformationSchema.zip"
        Import-SchemaZip -Url $url -RegionName $region -TempBasePath $tempPath
    }

    Write-Host -ForegroundColor Cyan "Total: $($final['ResourceTypes'].Count) resource types, $($final['PropertyTypes'].Count) property types across all regions"

    # Clean up temp directory
    if (Test-Path $tempPath) {
        Remove-Item $tempPath -Recurse -Force -ErrorAction SilentlyContinue
    }

    # Clean up the directories with dynamically generated content to ensure no legacy files are included in the module
    Write-Host -ForegroundColor Green 'Clean up the directories where functions will be generated'
    Get-ChildItem $vsTypeFuncPath -Exclude '.git*' | Remove-Item -Force -Recurse
    Get-ChildItem $vsPropFuncPath -Exclude '.git*' | Remove-Item -Force -Recurse

    # Regenerate New-VS... and Add-VS... commands
    Write-Host -ForegroundColor Green 'Generate Resource Type functions'
    foreach ($resource in $final['ResourceTypes'].Values | Sort-Object { $_.Name }) {
        Write-Verbose "Updating Resource Type [$($resource.Name)]"
        Convert-SpecToFunction -Resource $resource -ResourceType Resource
    }
    $AfterTypeCount = (Get-ChildItem -Path $vsTypeFuncPath).Count
    Write-Host -ForegroundColor Green ('Generated {0} Resource Type functions' -f $AfterTypeCount)

    Write-Host -ForegroundColor Green 'Generate Resource Property functions'
    foreach ($resource in $final['PropertyTypes'].Values | Sort-Object { $_.Name }) {
        Write-Verbose "Updating Resource Property [$($resource.Name)]"
        Convert-SpecToFunction -Resource $resource -ResourceType Property
    }
    $AfterPropCount = (Get-ChildItem -Path $vsPropFuncPath).Count
    Write-Host -ForegroundColor Green ('Generated {0} Resource Property functions' -f $AfterPropCount)
}
