function Add-VSEventsRuleInputTransformer {
    <#
    .SYNOPSIS
        Adds an AWS::Events::Rule.InputTransformer resource property to the template. Contains the parameters needed for you to provide custom input to a target based on one or more pieces of data extracted from the event.

    .DESCRIPTION
        Adds an AWS::Events::Rule.InputTransformer resource property to the template.
Contains the parameters needed for you to provide custom input to a target based on one or more pieces of data extracted from the event.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html

    .PARAMETER InputPathsMap
        Map of JSON paths to be extracted from the event. You can then insert these in the template in InputTemplate to produce the output you want to be sent to the target.
InputPathsMap is an array key-value pairs, where each value is a valid JSON path. You can have as many as 100 key-value pairs. You must use JSON dot notation, not bracket notation.
The keys cannot start with "AWS."

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputpathsmap
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: Map
        UpdateType: Mutable

    .PARAMETER InputTemplate
        Input template where you specify placeholders that will be filled with the values of the keys from InputPathsMap to customize the data sent to the target. Enclose each InputPathsMaps value in brackets: <*value*> The InputTemplate must be valid JSON.
If InputTemplate is a JSON object surrounded by curly braces, the following restrictions apply:
+ The placeholder cannot be used as an object key.
The following example shows the syntax for using InputPathsMap and InputTemplate.
 "InputTransformer":
{
"InputPathsMap": {"instance": "$.detail.instance","status": "$.detail.status"},
"InputTemplate": "<instance> is in state <status>"
}
To have the InputTemplate include quote marks within a JSON string, escape each quote marks with a slash, as in the following example:
 "InputTransformer":
{
"InputPathsMap": {"instance": "$.detail.instance","status": "$.detail.status"},
"InputTemplate": "<instance> is in state "<status>""
}
The InputTemplate can also be valid JSON with varibles in quotes or out, as in the following example:
 "InputTransformer":
{
"InputPathsMap": {"instance": "$.detail.instance","status": "$.detail.status"},
"InputTemplate": '{"myInstance": <instance>,"myStatus": "<instance> is in state "<status>""}'
}

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputtemplate
        PrimitiveType: String
        UpdateType: Mutable

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
