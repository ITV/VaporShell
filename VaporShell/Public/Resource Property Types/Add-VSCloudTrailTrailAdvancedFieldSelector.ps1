function Add-VSCloudTrailTrailAdvancedFieldSelector {
    <#
    .SYNOPSIS
        Adds an AWS::CloudTrail::Trail.AdvancedFieldSelector resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudTrail::Trail.AdvancedFieldSelector resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedfieldselector.html

    .PARAMETER Field
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedfieldselector.html#cfn-cloudtrail-trail-advancedfieldselector-field
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Equals
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedfieldselector.html#cfn-cloudtrail-trail-advancedfieldselector-equals
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER NotStartsWith
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedfieldselector.html#cfn-cloudtrail-trail-advancedfieldselector-notstartswith
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER NotEndsWith
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedfieldselector.html#cfn-cloudtrail-trail-advancedfieldselector-notendswith
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER StartsWith
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedfieldselector.html#cfn-cloudtrail-trail-advancedfieldselector-startswith
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER EndsWith
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedfieldselector.html#cfn-cloudtrail-trail-advancedfieldselector-endswith
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER NotEquals
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedfieldselector.html#cfn-cloudtrail-trail-advancedfieldselector-notequals
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudTrail.Trail.AdvancedFieldSelector')]
    [cmdletbinding()]

    Param
    (
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
        $Field,

        [Parameter(Mandatory = $false)]
        $Equals,

        [Parameter(Mandatory = $false)]
        $NotStartsWith,

        [Parameter(Mandatory = $false)]
        $NotEndsWith,

        [Parameter(Mandatory = $false)]
        $StartsWith,

        [Parameter(Mandatory = $false)]
        $EndsWith,

        [Parameter(Mandatory = $false)]
        $NotEquals

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudTrail.Trail.AdvancedFieldSelector'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
