function Add-VSWAFv2WebACLOrStatement {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.OrStatement resource property to the template.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.OrStatement resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatement.html

    .PARAMETER Statements
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatement.html#cfn-wafv2-webacl-orstatement-statements
        UpdateType: Mutable
        Type: List
        ItemType: Statement
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WAFv2.WebACL.OrStatement')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.WAFv2.WebACL.Statement"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Statements

    )

    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }

    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }

    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.OrStatement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
