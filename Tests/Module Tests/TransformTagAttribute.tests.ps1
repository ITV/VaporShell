#Requires -Modules @{ ModuleName = 'Pester'; ModuleVersion = '5.0.0' }

BeforeDiscovery {
    # Data-driven cases for the TransformTag attribute. Each case supplies input and
    # the expected normalised Key/Value pairs the attribute transform should produce.
    $tagCases = @(
        @{
            TestName = 'multiple hashtables'
            InputData = @( @{ one = 1 }, @{ two = 2 } )
            Expected = @( @{ Key = 'one'; Value = '1' }, @{ Key = 'two'; Value = '2' } )
        }
        @{
            TestName = 'multiple PSObjects'
            InputData = @( [PSCustomObject]@{ one = 1 }, [PSCustomObject]@{ two = 2 } )
            Expected = @( @{ Key = 'one'; Value = '1' }, @{ Key = 'two'; Value = '2' } )
        }
        @{
            TestName = 'a single hashtable with multiple keys'
            InputData = [PSCustomObject]@{ one = 1; two = 2 }
            Expected = @( @{ Key = 'one'; Value = '1' }, @{ Key = 'two'; Value = '2' } )
        }
        @{
            TestName = 'a hashtable with Key and Value keys'
            InputData = @{ Key = 'Name'; Value = 'Harold' }
            Expected = @( @{ Key = 'Name'; Value = 'Harold' } )
        }
        @{
            TestName = 'a hashtable with lowercase key and value keys'
            InputData = @{ key = 'Name'; value = 'Harold' }
            Expected = @( @{ Key = 'Name'; Value = 'Harold' } )
        }
        @{
            TestName = 'a hashtable with mixed case key and value keys'
            InputData = @{ kEy = 'Name'; ValUE = 'Harold' }
            Expected = @( @{ Key = 'Name'; Value = 'Harold' } )
        }
        @{
            TestName = 'a PSCustomObject with Key and Value properties'
            InputData = [PSCustomObject]@{ Key = 'Name'; Value = 'Harold' }
            Expected = @( @{ Key = 'Name'; Value = 'Harold' } )
        }
        @{
            TestName = 'a PSCustomObject with lowercase key and value properties'
            InputData = [PSCustomObject]@{ key = 'Name'; value = 'Harold' }
            Expected = @( @{ Key = 'Name'; Value = 'Harold' } )
        }
    )
}

BeforeAll {
    $projectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..' '..')).Path
    $moduleName = if ($env:BHProjectName) { $env:BHProjectName } else { 'VaporShell' }
    $builtModuleRoot = Join-Path $projectRoot 'BuildOutput' $moduleName

    Write-Verbose "Importing $moduleName module from [$builtModuleRoot]"
    Import-Module $builtModuleRoot -Force -Verbose:$false

    # A helper function whose $Tags parameter is decorated with the TransformTag
    # attribute under test. Binding a value to it exercises the attribute transform.
    function Test-TagBinding {
        [CmdletBinding()]
        param (
            [VaporShell.Core.TransformTag()]
            [object[]] $Tags
        )
        $Tags
    }
}

Describe 'TransformTagAttribute' {
    Context 'Confirm TagTransformAttribute works as expected' {
        # The 'existing VSTag object' case builds its input from Add-VSTag, which is
        # only available after the module import in BeforeAll, so it can't live in the
        # discovery-time $tagCases. Cover it explicitly here.
        It 'Should return one tag when given an existing VSTag object' {
            $result = @(Test-TagBinding -Tags (Add-VSTag -Key one -Value '1'))
            $result | Should -HaveCount 1
            $result[0].Key | Should -Be 'one'
            [string]$result[0].Value | Should -Be '1'
        }

        It 'Should return the expected tags when given <TestName>' -TestCases $tagCases {
            param ($TestName, $InputData, $Expected)

            $result = @(Test-TagBinding -Tags $InputData)

            $result | Should -HaveCount $Expected.Count
            for ($i = 0; $i -lt $Expected.Count; $i++) {
                $result[$i].Key | Should -Be $Expected[$i].Key
                [string]$result[$i].Value | Should -Be $Expected[$i].Value
            }
        }
    }
}
