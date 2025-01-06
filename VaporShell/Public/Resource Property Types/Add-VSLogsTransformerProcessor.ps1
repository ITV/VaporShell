function Add-VSLogsTransformerProcessor {
    <#
    .SYNOPSIS
        Adds an AWS::Logs::Transformer.Processor resource property to the template.

    .DESCRIPTION
        Adds an AWS::Logs::Transformer.Processor resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html

    .PARAMETER ParseCloudfront
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsecloudfront
        UpdateType: Mutable
        Type: ParseCloudfront

    .PARAMETER LowerCaseString
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-lowercasestring
        UpdateType: Mutable
        Type: LowerCaseString

    .PARAMETER UpperCaseString
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-uppercasestring
        UpdateType: Mutable
        Type: UpperCaseString

    .PARAMETER DeleteKeys
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-deletekeys
        UpdateType: Mutable
        Type: DeleteKeys

    .PARAMETER RenameKeys
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-renamekeys
        UpdateType: Mutable
        Type: RenameKeys

    .PARAMETER Grok
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-grok
        UpdateType: Mutable
        Type: Grok

    .PARAMETER SplitString
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-splitstring
        UpdateType: Mutable
        Type: SplitString

    .PARAMETER Csv
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-csv
        UpdateType: Mutable
        Type: Csv

    .PARAMETER AddKeys
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-addkeys
        UpdateType: Mutable
        Type: AddKeys

    .PARAMETER SubstituteString
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-substitutestring
        UpdateType: Mutable
        Type: SubstituteString

    .PARAMETER ParseKeyValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsekeyvalue
        UpdateType: Mutable
        Type: ParseKeyValue

    .PARAMETER ParseWAF
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsewaf
        UpdateType: Mutable
        Type: ParseWAF

    .PARAMETER ParseVPC
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsevpc
        UpdateType: Mutable
        Type: ParseVPC

    .PARAMETER ParseRoute53
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parseroute53
        UpdateType: Mutable
        Type: ParseRoute53

    .PARAMETER TypeConverter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-typeconverter
        UpdateType: Mutable
        Type: TypeConverter

    .PARAMETER ParseJSON
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsejson
        UpdateType: Mutable
        Type: ParseJSON

    .PARAMETER ParsePostgres
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-parsepostgres
        UpdateType: Mutable
        Type: ParsePostgres

    .PARAMETER CopyValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-copyvalue
        UpdateType: Mutable
        Type: CopyValue

    .PARAMETER MoveKeys
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-movekeys
        UpdateType: Mutable
        Type: MoveKeys

    .PARAMETER DateTimeConverter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-datetimeconverter
        UpdateType: Mutable
        Type: DateTimeConverter

    .PARAMETER TrimString
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-trimstring
        UpdateType: Mutable
        Type: TrimString

    .PARAMETER ListToMap
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-processor.html#cfn-logs-transformer-processor-listtomap
        UpdateType: Mutable
        Type: ListToMap

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Logs.Transformer.Processor')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ParseCloudfront,

        [Parameter(Mandatory = $false)]
        $LowerCaseString,

        [Parameter(Mandatory = $false)]
        $UpperCaseString,

        [Parameter(Mandatory = $false)]
        $DeleteKeys,

        [Parameter(Mandatory = $false)]
        $RenameKeys,

        [Parameter(Mandatory = $false)]
        $Grok,

        [Parameter(Mandatory = $false)]
        $SplitString,

        [Parameter(Mandatory = $false)]
        $Csv,

        [Parameter(Mandatory = $false)]
        $AddKeys,

        [Parameter(Mandatory = $false)]
        $SubstituteString,

        [Parameter(Mandatory = $false)]
        $ParseKeyValue,

        [Parameter(Mandatory = $false)]
        $ParseWAF,

        [Parameter(Mandatory = $false)]
        $ParseVPC,

        [Parameter(Mandatory = $false)]
        $ParseRoute53,

        [Parameter(Mandatory = $false)]
        $TypeConverter,

        [Parameter(Mandatory = $false)]
        $ParseJSON,

        [Parameter(Mandatory = $false)]
        $ParsePostgres,

        [Parameter(Mandatory = $false)]
        $CopyValue,

        [Parameter(Mandatory = $false)]
        $MoveKeys,

        [Parameter(Mandatory = $false)]
        $DateTimeConverter,

        [Parameter(Mandatory = $false)]
        $TrimString,

        [Parameter(Mandatory = $false)]
        $ListToMap

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Logs.Transformer.Processor'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
