function Export-Vaporshell {
    <#
    .SYNOPSIS
        Exports the template object to JSON file.

    .DESCRIPTION
        Exports the template object to JSON file.

        Requires the Vaporshell input object to be type 'Vaporshell.Template'

    .PARAMETER VaporshellTemplate
        The input template object

    .PARAMETER As
        Specify JSON or YAML for your preferred output. Defaults to JSON.

        **Important**: In order to use YAML, you must have the powershell-yaml module installed: Install-Module powershell-yaml

    .PARAMETER Path
        Path to save the resulting JSON file.

    .PARAMETER ValidateTemplate
        Validates the template using the AWS .NET SDK

    .PARAMETER Force
        Forces an overwrite if the Path already exists

    .EXAMPLE
        $Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
        # Add items to the $Template object here
        $Template | Export-Vaporshell -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

    .EXAMPLE
        $Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
        # Add items to the $Template object here
        Export-Vaporshell -VaporshellTemplate $Template -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    param
    (
        [parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true)]
        [ValidateScript( {
                if ($_.Resources) {
                    $true
                } else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'Unable to find any resources on this Vaporshell template. Resources are required in CloudFormation templates at the minimum.'))
                }
            })]
        [PSTypeName('Vaporshell.Template')]
        $VaporshellTemplate,
        [parameter(Mandatory = $false, Position = 1)]
        [ValidateSet('JSON', 'YAML')]
        [System.String]
        $As = 'JSON',
        [parameter(Mandatory = $false, Position = 2)]
        [System.String]
        $Path,
        [parameter(Mandatory = $false)]
        [Switch]
        $ValidateTemplate,
        [parameter(Mandatory = $false)]
        [Switch]
        $Force
    )
    begin {
        $ForcePref = @{}
        if ($Force) {
            $ForcePref.add('Force', $True)
        }
    }
    process {
        Write-Verbose 'Converting template object to JSON'
        $JSON = ConvertTo-Json -Depth 100 -InputObject $VaporshellTemplate -Verbose:$false | Format-Json
    }
    end {
        if ($As -eq 'YAML') {
            if (Get-Command cfn-flip -ErrorAction SilentlyContinue) {
                Write-Verbose 'Converting JSON to YAML with cfn-flip'
                $Final = $JSON | cfn-flip
            } elseif (Get-Module powershell-yaml -ListAvailable -ErrorAction SilentlyContinue) {
                Import-Module powershell-yaml -ErrorAction SilentlyContinue
                Write-Verbose 'Converting JSON to YAML with powershell-yaml (cfn-flip not found)'
                $obj = $JSON | ConvertFrom-Json -Depth 100
                $Final = ConvertTo-Yaml -Data $obj

                # Post-process: restore .0 suffix on whole-number floats.
                # ConvertTo-Yaml emits [double]60.0 as '60' (integer).
                # CFN treats 60 vs 60.0 as a template diff, triggering resource replacement.
                # Find "key": value.0 pairs in JSON, then fix those specific keys in YAML.
                $keyFloatPattern = [regex]'"([^"]+)"\s*:\s*(\d+)\.0\b'
                $keyFloatMatches = $keyFloatPattern.Matches(($JSON -join "`n"))
                foreach ($m in $keyFloatMatches) {
                    $key = $m.Groups[1].Value
                    $val = $m.Groups[2].Value
                    $Final = $Final -replace "(?m)(${key}:\s+)${val}(\s*)$", "`${1}${val}.0`$2"
                }
            } else {
                Write-Warning 'YAML conversion requires cfn-flip (pip install cfn-flip) or the powershell-yaml module (Install-Module powershell-yaml)'
                $Final = $JSON
            }
        } else {
            $Final = $JSON
        }
        if ($ValidateTemplate) {
            Get-TemplateValidation -TemplateBody ($Final -join "`n")
        }
        if ($Path) {
            Write-Verbose "Exporting template to: $Path"
            $Final | Set-Content -Path $Path @ForcePref -Verbose:$false
        } else {
            return ($Final -join "`n")
        }
    }
}
