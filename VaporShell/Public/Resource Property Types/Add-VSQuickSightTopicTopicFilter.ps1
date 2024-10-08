function Add-VSQuickSightTopicTopicFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Topic.TopicFilter resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Topic.TopicFilter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html

    .PARAMETER FilterClass
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filterclass
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER FilterSynonyms
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filtersynonyms
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER FilterType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filtertype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RelativeDateFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-relativedatefilter
        UpdateType: Mutable
        Type: TopicRelativeDateFilter

    .PARAMETER OperandFieldName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-operandfieldname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER NumericEqualityFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-numericequalityfilter
        UpdateType: Mutable
        Type: TopicNumericEqualityFilter

    .PARAMETER FilterDescription
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filterdescription
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER NumericRangeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-numericrangefilter
        UpdateType: Mutable
        Type: TopicNumericRangeFilter

    .PARAMETER DateRangeFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-daterangefilter
        UpdateType: Mutable
        Type: TopicDateRangeFilter

    .PARAMETER FilterName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-filtername
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CategoryFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-topicfilter.html#cfn-quicksight-topic-topicfilter-categoryfilter
        UpdateType: Mutable
        Type: TopicCategoryFilter

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Topic.TopicFilter')]
    [cmdletbinding()]

    Param
    (
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
        $FilterClass,

        [Parameter(Mandatory = $false)]
        $FilterSynonyms,

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
        $FilterType,

        [Parameter(Mandatory = $false)]
        $RelativeDateFilter,

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
        $OperandFieldName,

        [Parameter(Mandatory = $false)]
        $NumericEqualityFilter,

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
        $FilterDescription,

        [Parameter(Mandatory = $false)]
        $NumericRangeFilter,

        [Parameter(Mandatory = $false)]
        $DateRangeFilter,

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
        $FilterName,

        [Parameter(Mandatory = $false)]
        $CategoryFilter

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Topic.TopicFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
