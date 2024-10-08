function Add-VSEventsRuleInputTransformer {
    <#
    .SYNOPSIS
        Adds an AWS::Events::Rule.InputTransformer resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Events::Rule.InputTransformer resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html

    .PARAMETER InputPathsMap
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputpathsmap
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER InputTemplate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputtemplate
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Events.Rule.InputTransformer')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $InputPathsMap,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InputTemplate
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Events.Rule.InputTransformer'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
