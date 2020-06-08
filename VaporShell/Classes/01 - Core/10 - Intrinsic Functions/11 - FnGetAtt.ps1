class FnGetAtt : IntrinsicFunction {
    static [string] Help() {
        return (Get-Help -Name 'Add-FnGetAtt' | Out-String)
    }

    static [string] Help([string] $scope) {
        $params = @{Name = 'Add-FnGetAtt'}
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
        Start-Process 'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-getatt.html'
    }

    [string] ToString() {
        return "FnGetAtt($($this['Fn::GetAtt']))"
    }

    FnGetAtt() {}

    FnGetAtt([string] $logicalNameOfResource, [string] $attributeName) {
        $this['Fn::GetAtt'] = @($logicalNameOfResource,$attributeName)
    }
}
