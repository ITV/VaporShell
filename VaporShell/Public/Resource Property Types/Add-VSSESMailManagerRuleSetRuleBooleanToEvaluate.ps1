function Add-VSSESMailManagerRuleSetRuleBooleanToEvaluate {
    <#
    .SYNOPSIS
        Adds an AWS::SES::MailManagerRuleSet.RuleBooleanToEvaluate resource property to the template.

    .DESCRIPTION
        Adds an AWS::SES::MailManagerRuleSet.RuleBooleanToEvaluate resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleantoevaluate.html

    .PARAMETER IsInAddressList
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleantoevaluate.html#cfn-ses-mailmanagerruleset-rulebooleantoevaluate-isinaddresslist
        UpdateType: Mutable
        Type: RuleIsInAddressList

    .PARAMETER Attribute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleantoevaluate.html#cfn-ses-mailmanagerruleset-rulebooleantoevaluate-attribute
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Analysis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleantoevaluate.html#cfn-ses-mailmanagerruleset-rulebooleantoevaluate-analysis
        UpdateType: Mutable
        Type: Analysis

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SES.MailManagerRuleSet.RuleBooleanToEvaluate')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IsInAddressList,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Attribute,

        [Parameter(Mandatory = $false)]
        $Analysis

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.MailManagerRuleSet.RuleBooleanToEvaluate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
