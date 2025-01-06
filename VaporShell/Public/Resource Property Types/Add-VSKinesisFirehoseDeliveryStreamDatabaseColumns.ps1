function Add-VSKinesisFirehoseDeliveryStreamDatabaseColumns {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.DatabaseColumns resource property to the template.

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.DatabaseColumns resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasecolumns.html

    .PARAMETER Exclude
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasecolumns.html#cfn-kinesisfirehose-deliverystream-databasecolumns-exclude
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Include
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasecolumns.html#cfn-kinesisfirehose-deliverystream-databasecolumns-include
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.DatabaseColumns')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Exclude,

        [Parameter(Mandatory = $false)]
        $Include

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.DatabaseColumns'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
