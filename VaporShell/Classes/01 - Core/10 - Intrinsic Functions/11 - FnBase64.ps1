using namespace System.Management.Automation

class FnBase64 : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnBase64' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnBase64'}
        switch -Regex ($scope) {
            '^F(u|ull){0,1}' {
                $params["Full"] = $true
            }
            '^D(e|etail){0,1}' {
                $params["Detailed"] = $true
            }
            '^E(x|xample){0,1}' {
                $params["Examples"] = $true
            }
            '^O(n|nline){0,1}$' {
                $params["Online"] = $true
            }
        }
        return (Get-Help @params | Out-String)
    }

    static [void] Docs() {
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-base64.html'
    }

    [string] ToString() {
        return "FnBase64($($this['Fn::Base64']))"
    }

    FnBase64() {}

    FnBase64([object] $value) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($value -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($value, $validTypes)
        }
        $this['Fn::Base64'] = $value
    }
}
