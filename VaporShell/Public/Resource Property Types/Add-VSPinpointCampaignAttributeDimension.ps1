function Add-VSPinpointCampaignAttributeDimension {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::Campaign.AttributeDimension resource property to the template. Specifies attribute-based criteria for including or excluding endpoints from a segment.

    .DESCRIPTION
        Adds an AWS::Pinpoint::Campaign.AttributeDimension resource property to the template.
Specifies attribute-based criteria for including or excluding endpoints from a segment.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html

    .PARAMETER AttributeType
        The type of segment dimension to use. Valid values are:
+  INCLUSIVE – endpoints that have attributes matching the values are included in the segment.
+  EXCLUSIVE – endpoints that have attributes matching the values are excluded from the segment.
+  CONTAINS – endpoints that have attributes' substrings match the values are included in the segment.
+  BEFORE – endpoints with attributes read as ISO_INSTANT datetimes before the value are included in the segment.
+  AFTER – endpoints with attributes read as ISO_INSTANT datetimes after the value are included in the segment.
+  BETWEEN – endpoints with attributes read as ISO_INSTANT datetimes between the values are included in the segment.
+  ON – endpoints with attributes read as ISO_INSTANT dates on the value are included in the segment. Time is ignored in this comparison.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html#cfn-pinpoint-campaign-attributedimension-attributetype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Values
        The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html#cfn-pinpoint-campaign-attributedimension-values
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.Campaign.AttributeDimension')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AttributeType,
        [parameter(Mandatory = $false)]
        $Values
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.Campaign.AttributeDimension'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
