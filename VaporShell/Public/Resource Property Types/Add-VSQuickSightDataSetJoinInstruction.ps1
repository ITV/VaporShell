function Add-VSQuickSightDataSetJoinInstruction {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.JoinInstruction resource property to the template. The instructions associated with a join.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.JoinInstruction resource property to the template.
The instructions associated with a join.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-joininstruction.html

    .PARAMETER OnClause
        The join instructions provided in the ON clause of a join.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-joininstruction.html#cfn-quicksight-dataset-joininstruction-onclause
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Type
        The type of join that it is.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-joininstruction.html#cfn-quicksight-dataset-joininstruction-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LeftJoinKeyProperties
        Join key properties of the left operand.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-joininstruction.html#cfn-quicksight-dataset-joininstruction-leftjoinkeyproperties
        UpdateType: Mutable
        Type: JoinKeyProperties

    .PARAMETER LeftOperand
        The operand on the left side of a join.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-joininstruction.html#cfn-quicksight-dataset-joininstruction-leftoperand
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RightOperand
        The operand on the right side of a join.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-joininstruction.html#cfn-quicksight-dataset-joininstruction-rightoperand
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RightJoinKeyProperties
        Join key properties of the right operand.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-joininstruction.html#cfn-quicksight-dataset-joininstruction-rightjoinkeyproperties
        UpdateType: Mutable
        Type: JoinKeyProperties

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSet.JoinInstruction')]
    [cmdletbinding()]
    Param
    (
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
        $OnClause,
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
        $Type,
        [parameter(Mandatory = $false)]
        $LeftJoinKeyProperties,
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
        $LeftOperand,
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
        $RightOperand,
        [parameter(Mandatory = $false)]
        $RightJoinKeyProperties
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.JoinInstruction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
