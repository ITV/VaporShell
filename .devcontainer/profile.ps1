#. /tmp/library-scripts/bootstrap.ps1

function Get-ScrtHqDevContainerHelp {
    [CmdletBinding()]
    Param()
    Process {
        Write-Host -ForegroundColor Cyan 'Welcome to your Secret Headquarters!'; `
        Write-Host "`nThis is a containerized development environment containing tools to "; `
        Write-Host "build and test the module with build shortcuts powered by PSProfile."; `
        Write-Host -ForegroundColor Magenta "`nHow to use this environment:`n"; `
        Write-Host '* To build the module, run ' -NoNewLine; `
        Write-Host -ForegroundColor Green 'Start-BuildScript' -NoNewLine; `
        Write-Host ' or ' -NoNewline; `
        Write-Host -ForegroundColor Green 'bld' -NoNewline; `
        Write-Host ' (alias).'; `
        Write-Host '* To test the module, append ' -NoNewLine; `
        Write-Host -ForegroundColor Green '-Task Test' -NoNewLine; `
        Write-Host ' to the command, e.g. ' -NoNewLine; `
        Write-Host -ForegroundColor Green "bld -Task Test`n"; `
        Write-Host 'To repeat this information, run ' -NoNewLine; `
        Write-Host -ForegroundColor Yellow 'Get-ScrtHqDevContainerHelp'; `
        Write-Host '';
    }
}

Get-ScrtHqDevContainerHelp

Import-Module PSProfile

Add-PSProfileCommandAlias -Alias code -Command Open-Code -Force -Save

# $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 0x808080
# $GitPromptSettings.DefaultPromptSuffix.ForegroundColor = 0x808080
# $GitPromptSettings.DefaultPromptPath.ForegroundColor = 0xFFA500
# $GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n[$([DateTime]::now.ToString("MM-dd HH:mm:ss.ffff"))] [#$((Get-History -Count 1).id + 1)]'
# $GitPromptSettings.DefaultPromptSuffix = '$(">" * ($nestedPromptLevel + 1)) '

function global:prompt {
    $origDollarQuestion = $global:?
    $origLastExitCode = $global:LASTEXITCODE
    $GitPromptSettings.DefaultPromptPrefix.ForegroundColor = if ($origDollarQuestion -eq $true) {
        "Green"
    }
    else {
        "Red"
    }
    $GitPromptSettings.DefaultPromptPath.ForegroundColor = 'Cyan'
    $GitPromptSettings.DefaultPromptPrefix.Text = '[#$($MyInvocation.HistoryId) $("PS {0}" -f (Get-PSVersion))] '
    $GitPromptSettings.DefaultPromptPath.Text = '[$(Get-PathAlias)$("+" * ((Get-Location -Stack).Count))]'
    $GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n[$(Get-LastCommandDuration) @ $([DateTime]::now.ToString("HH:mm:ss.ffff"))]`n'
    if ($env:AWS_PROFILE) {
        $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 'Yellow'
        $awsIcon = if ($global:PSProfile.Settings.ContainsKey("FontType")) {
            $global:PSProfile.Settings.PromptCharacters.AWS[$global:PSProfile.Settings.FontType]
        }
        else {
            "AWS:"
        }
        if ([String]::IsNullOrEmpty($awsIcon)) {
            $awsIcon = "AWS:"
        }
        $str = "$($awsIcon) $($env:AWS_PROFILE)$(if($env:AWS_DEFAULT_REGION){" @ $env:AWS_DEFAULT_REGION"})"
        $GitPromptSettings.DefaultPromptBeforeSuffix.Text += '[{0}]`n' -f $str
    }
    else {
        $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 'White'
    }
    $GitPromptSettings.DefaultPromptBeforeSuffix.Text += '<###'

    $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 0x808080
    $GitPromptSettings.DefaultPromptSuffix.ForegroundColor = 0x808080
    $GitPromptSettings.DefaultPromptPath.ForegroundColor = 0xFFA500

    $global:LASTEXITCODE = $origLastExitCode
    & $GitPromptScriptBlock
}



if ($null -ne (Get-Module PSReadline)) {
    $setPSReadLineOptionSplat = @{
        HistorySearchCursorMovesToEnd = $true
        HistoryNoDuplicates           = $true
        ShowToolTips                  = $true
        HistorySearchCaseSensitive    = $false
        HistorySavePath               = '/workspaces/VaporShell/.devcontainer/IgnoredCommandHistory.txt'
        PredictionSource              = 'History'

    }
    Set-PSReadLineOption @setPSReadLineOptionSplat
    Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
    Set-PSReadLineKeyHandler -Key Escape -Function RevertLine
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
    Set-PSReadLineKeyHandler -Chord 'Ctrl+W' -Function BackwardKillWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+LeftArrow' -Function BackwardWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+Shift+LeftArrow' -Function SelectBackwardWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+RightArrow' -Function ForwardWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+Shift+RightArrow' -Function SelectForwardWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+D'  -Function KillWord
    Set-PSReadLineKeyHandler -Chord 'Ctrl+D,Ctrl+C' -Function CaptureScreen
    if ($PSVersionTable.PSVersion.Major -le 5 -or ($PSVersionTable.PSVersion.Major -ge 7 -and $IsWindows)) {
        Set-PSReadLineKeyHandler -Key F7 `
            -BriefDescription History `
            -LongDescription 'Show command history' `
            -ScriptBlock {
            $pattern = $null
            [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$pattern, [ref]$null)
            if ($pattern) {
                $pattern = [regex]::Escape($pattern)
            }
            $history = [System.Collections.ArrayList]@(
                $last = ''
                $lines = ''
                foreach ($line in [System.IO.File]::ReadLines((Get-PSReadLineOption).HistorySavePath)) {
                    if ($line.EndsWith('`')) {
                        $line = $line.Substring(0, $line.Length - 1)
                        $lines = if ($lines) {
                            "$lines`n$line"
                        }
                        else {
                            $line
                        }
                        continue
                    }
                    if ($lines) {
                        $line = "$lines`n$line"
                        $lines = ''
                    }
                    if (($line -cne $last) -and (!$pattern -or ($line -match $pattern))) {
                        $last = $line
                        $line
                    }
                }
            )
            $history.Reverse()
            $command = $history | Out-GridView -Title History -PassThru
            if ($command) {
                [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
                [Microsoft.PowerShell.PSConsoleReadLine]::Insert(($command -join "`n"))
            }
        }
    }
    Set-PSReadLineKeyHandler -Key Backspace `
        -BriefDescription SmartBackspace `
        -LongDescription "Delete previous character or matching quotes/parens/braces" `
        -ScriptBlock {
        param($key, $arg)
        $line = $null
        $cursor = $null
        [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)
        if ($cursor -gt 0) {
            $toMatch = $null
            if ($cursor -lt $line.Length) {
                switch ($line[$cursor]) {
                    <#case#> '"' {
                        $toMatch = '"'; break
                    }
                    <#case#> "'" {
                        $toMatch = "'"; break
                    }
                    <#case#> ')' {
                        $toMatch = '('; break
                    }
                    <#case#> ']' {
                        $toMatch = '['; break
                    }
                    <#case#> '}' {
                        $toMatch = '{'; break
                    }
                }
            }
            if ($toMatch -ne $null -and $line[$cursor - 1] -eq $toMatch) {
                [Microsoft.PowerShell.PSConsoleReadLine]::Delete($cursor - 1, 2)
            }
            else {
                [Microsoft.PowerShell.PSConsoleReadLine]::BackwardDeleteChar($key, $arg)
            }
        }
    }
    Set-PSReadLineKeyHandler -Key Alt+w `
        -BriefDescription SaveInHistory `
        -LongDescription "Save current line in history but do not execute" ` `
        -ScriptBlock {
        param($key, $arg)
        $line = $null
        $cursor = $null
        [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)
        [Microsoft.PowerShell.PSConsoleReadLine]::AddToHistory($line)
        [Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
    }
    # Insert text from the clipboard as a here string
    Set-PSReadLineKeyHandler -Key Ctrl+Shift+v `
        -BriefDescription PasteAsHereString `
        -LongDescription "Paste the clipboard text as a here string" `
        -ScriptBlock {
        param($key, $arg)
        Add-Type -Assembly PresentationCore
        if ([System.Windows.Clipboard]::ContainsText()) {
            # Get clipboard text - remove trailing spaces, convert \r\n to \n, and remove the final \n.
            $text = ([System.Windows.Clipboard]::GetText() -replace "\p{Zs}*`r?`n", "`n").TrimEnd()
            [Microsoft.PowerShell.PSConsoleReadLine]::Insert("@'`n$text`n'@")
        }
        else {
            [Microsoft.PowerShell.PSConsoleReadLine]::Ding()
        }
    }
    # Sometimes you want to get a property of invoke a member on what you've entered so far
    # but you need parens to do that.  This binding will help by putting parens around the current selection,
    # or if nothing is selected, the whole line.
    Set-PSReadLineKeyHandler -Key 'Alt+(', 'Alt+{', 'Alt+[', 'Alt+"', "Alt+'" `
        -BriefDescription WrapSelection `
        -LongDescription "Put parenthesis/brackets/braces/quotes around the selection or entire line and move the cursor to after the closing parenthesis" `
        -ScriptBlock {
        param($key, $arg)
        switch -Regex ($key.KeyChar) {
            '\(' {
                $openChar = [char]'('
                $closeChar = [char]')'
                break
            }
            '\{' {
                $openChar = [char]'{'
                $closeChar = [char]'}'
                break
            }
            '\[' {
                $openChar = [char]'['
                $closeChar = [char]']'
                break
            }
            '\"' {
                $openChar = $closeChar = [char]'"'
                break
            }
            "\'" {
                $openChar = $closeChar = [char]"'"
                break
            }
        }
        $selectionStart = $null
        $selectionLength = $null
        [Microsoft.PowerShell.PSConsoleReadLine]::GetSelectionState([ref]$selectionStart, [ref]$selectionLength)
        $line = $null
        $cursor = $null
        [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)
        if ($selectionStart -ne -1) {
            [Microsoft.PowerShell.PSConsoleReadLine]::Replace($selectionStart, $selectionLength, $openChar + $line.SubString($selectionStart, $selectionLength) + $closeChar)
            [Microsoft.PowerShell.PSConsoleReadLine]::SetCursorPosition($selectionStart + $selectionLength + 2)
        }
        else {
            [Microsoft.PowerShell.PSConsoleReadLine]::Replace(0, $line.Length, $openChar + $line + $closeChar)
            [Microsoft.PowerShell.PSConsoleReadLine]::EndOfLine()
        }
    }
    # This example will replace any aliases on the command line with the resolved commands.
    Set-PSReadLineKeyHandler -Key "Alt+%" `
        -BriefDescription ExpandAliases `
        -LongDescription "Replace all aliases with the full command" `
        -ScriptBlock {
        param($key, $arg)
        $ast = $null
        $tokens = $null
        $errors = $null
        $cursor = $null
        [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$ast, [ref]$tokens, [ref]$errors, [ref]$cursor)
        $startAdjustment = 0
        foreach ($token in $tokens) {
            if ($token.TokenFlags -band [System.Management.Automation.Language.TokenFlags]::CommandName) {
                $alias = $ExecutionContext.InvokeCommand.GetCommand($token.Extent.Text, 'Alias')
                if ($alias -ne $null) {
                    $resolvedCommand = $alias.ResolvedCommandName
                    if ($resolvedCommand -ne $null) {
                        $extent = $token.Extent
                        $length = $extent.EndOffset - $extent.StartOffset
                        [Microsoft.PowerShell.PSConsoleReadLine]::Replace(
                            $extent.StartOffset + $startAdjustment,
                            $length,
                            $resolvedCommand)
                        # Our copy of the tokens won't have been updated, so we need to
                        # adjust by the difference in length
                        $startAdjustment += ($resolvedCommand.Length - $length)
                    }
                }
            }
        }
    }
    # F1 for help on the command line - naturally
    Set-PSReadLineKeyHandler -Key F1 `
        -BriefDescription CommandHelp `
        -LongDescription "Open the help window for the current command" `
        -ScriptBlock {
        param($key, $arg)
        $ast = $null
        $tokens = $null
        $errors = $null
        $cursor = $null
        [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$ast, [ref]$tokens, [ref]$errors, [ref]$cursor)
        $commandAst = $ast.FindAll( {
                $node = $args[0]
                $node -is [System.Management.Automation.Language.CommandAst] -and
                $node.Extent.StartOffset -le $cursor -and
                $node.Extent.EndOffset -ge $cursor
            }, $true) | Select-Object -Last 1
        if ($commandAst -ne $null) {
            $commandName = $commandAst.GetCommandName()
            if ($commandName -ne $null) {
                $command = $ExecutionContext.InvokeCommand.GetCommand($commandName, 'All')
                if ($command -is [System.Management.Automation.AliasInfo]) {
                    $commandName = $command.ResolvedCommandName
                }
                if ($commandName -ne $null) {
                    Get-Help $commandName -ShowWindow
                }
            }
        }
    }
    #
    # Ctrl+Shift+j then type a key to mark the current directory.
    # Ctrj+j then the same key will change back to that directory without
    # needing to type cd and won't change the command line.
    #
    $global:PSReadLineMarks = @{ }
    Set-PSReadLineKeyHandler -Key Ctrl+Shift+j `
        -BriefDescription MarkDirectory `
        -LongDescription "Mark the current directory" `
        -ScriptBlock {
        param($key, $arg)
        $key = [Console]::ReadKey($true)
        $global:PSReadLineMarks[$key.KeyChar] = $pwd
    }
    Set-PSReadLineKeyHandler -Key Ctrl+j `
        -BriefDescription JumpDirectory `
        -LongDescription "Goto the marked directory" `
        -ScriptBlock {
        param($key, $arg)
        $key = [Console]::ReadKey()
        $dir = $global:PSReadLineMarks[$key.KeyChar]
        if ($dir) {
            Set-Location $dir
            [Microsoft.PowerShell.PSConsoleReadLine]::InvokePrompt()
        }
    }
    Set-PSReadLineKeyHandler -Key Alt+j `
        -BriefDescription ShowDirectoryMarks `
        -LongDescription "Show the currently marked directories" `
        -ScriptBlock {
        param($key, $arg)
        $global:PSReadLineMarks.GetEnumerator() | ForEach-Object {
            [PSCustomObject]@{Key = $_.Key; Dir = $_.Value } } |
            Format-Table -AutoSize | Out-Host
        [Microsoft.PowerShell.PSConsoleReadLine]::InvokePrompt()
    }
    Set-PSReadLineOption -CommandValidationHandler {
        param([CommandAst]$CommandAst)
        switch ($CommandAst.GetCommandName()) {
            'git' {
                $gitCmd = $CommandAst.CommandElements[1].Extent
                switch ($gitCmd.Text) {
                    'cmt' {
                        [Microsoft.PowerShell.PSConsoleReadLine]::Replace(
                            $gitCmd.StartOffset, $gitCmd.EndOffset - $gitCmd.StartOffset, 'commit')
                    }
                }
            }
        }
    }
}
if ($env:TERM_PROGRAM -eq 'vscode') {
    # Necessary for the Terminal Input extension for VS Code so Shift+Enter works correctly.
    Set-PSReadLineKeyHandler -Chord "alt+$([char]0x2665)" -Function AddLine
}
