function Add-VSConnectEvaluationFormEvaluationFormItemEnablementExpression {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::EvaluationForm.EvaluationFormItemEnablementExpression resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::EvaluationForm.EvaluationFormItemEnablementExpression resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementexpression.html

    .PARAMETER Values
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementexpression.html#cfn-connect-evaluationform-evaluationformitemenablementexpression-values
        UpdateType: Mutable
        Type: List
        ItemType: EvaluationFormItemEnablementSourceValue
        DuplicatesAllowed: True

    .PARAMETER Source
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementexpression.html#cfn-connect-evaluationform-evaluationformitemenablementexpression-source
        UpdateType: Mutable
        Type: EvaluationFormItemEnablementSource

    .PARAMETER Comparator
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementexpression.html#cfn-connect-evaluationform-evaluationformitemenablementexpression-comparator
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormItemEnablementExpression')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormItemEnablementSourceValue"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Values,

        [Parameter(Mandatory = $true)]
        $Source,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Comparator

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.EvaluationForm.EvaluationFormItemEnablementExpression'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
