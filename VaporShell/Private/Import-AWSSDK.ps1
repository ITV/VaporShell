function Import-AWSSDK {
    [CmdletBinding()]
    param()
    process {
        # Load the AWSSDK assemblies via AWS.Tools modules or from the VaporShell module directory
        try {
            $currentWarningPref = $WarningPreference
            $currentErrorPref = $ErrorActionPreference
            $WarningPreference = 'SilentlyContinue'
            $ErrorActionPreference = 'SilentlyContinue'

            @(
                @{ Assembly = 'AWSSDK.CloudFormation.dll'; Module = 'AWS.Tools.CloudFormation' }
                @{ Assembly = 'AWSSDK.S3.dll'; Module = 'AWS.Tools.S3' }
            ) | ForEach-Object {
                $assemblyName = $_.Assembly
                $toolsModule = $_.Module
                if ($null -eq ([System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.Location -match $assemblyName })) {
                    if (Get-Module $toolsModule -ListAvailable -Verbose:$false) {
                        Write-Verbose "Importing $assemblyName via module $toolsModule"
                        Import-Module $toolsModule -Verbose:$false -ErrorAction SilentlyContinue
                    } else {
                        Write-Verbose "Importing $assemblyName from VaporShell module base"
                        [System.Reflection.Assembly]::LoadFrom((Join-Path $PSScriptRoot $assemblyName)) | Out-Null
                    }
                }
            }
        } catch {}
        finally {
            $WarningPreference = $currentWarningPref
            $ErrorActionPreference = $currentErrorPref
        }
    }
}
