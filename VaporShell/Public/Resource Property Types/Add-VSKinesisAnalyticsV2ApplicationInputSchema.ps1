function Add-VSKinesisAnalyticsV2ApplicationInputSchema {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::Application.InputSchema resource property to the template.

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::Application.InputSchema resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html

    .PARAMETER RecordEncoding
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordencoding
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RecordColumns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordcolumns
        UpdateType: Mutable
        Type: List
        ItemType: RecordColumn
        DuplicatesAllowed: True

    .PARAMETER RecordFormat
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordformat
        UpdateType: Mutable
        Type: RecordFormat

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.Application.InputSchema')]
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
        $RecordEncoding,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.KinesisAnalyticsV2.Application.RecordColumn"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RecordColumns,

        [Parameter(Mandatory = $true)]
        $RecordFormat

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.Application.InputSchema'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
