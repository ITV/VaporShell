using namespace System.Management.Automation

class FnFindInMap : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnFindInMap' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnFindInMap'}
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
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-findinmap.html'
    }

    [string] ToString() {
        return "FnFindInMap($($this['Fn::FindInMap']))"
    }

    FnFindInMap() {}

    FnFindInMap(
        [string] $mapName,
        [object] $topLevelKey,
        [object] $secondLevelKey
    ) {
        $validTypes = @([string], [int], [IntrinsicFunction], [ConditionFunction])
        $isValid = foreach ($type in $validTypes) {
            if ($topLevelKey -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($topLevelKey, $validTypes)
        }
        $isValid = foreach ($type in $validTypes) {
            if ($secondLevelKey -is $type) {
                $true
                break
            }
        }
        if (-not $isValid) {
            throw [VSError]::InvalidType($secondLevelKey, $validTypes)
        }
        $this['Fn::FindInMap'] = @($mapName, $topLevelKey, $secondLevelKey)
    }
}
