function Add-VSAppFlowFlowS3DestinationProperties {
    <#
    .SYNOPSIS
        Adds an AWS::AppFlow::Flow.S3DestinationProperties resource property to the template. The properties that are applied when Amazon S3 is used as a destination.

    .DESCRIPTION
        Adds an AWS::AppFlow::Flow.S3DestinationProperties resource property to the template.
The properties that are applied when Amazon S3 is used as a destination.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3destinationproperties.html

    .PARAMETER BucketName
        The Amazon S3 bucket name in which Amazon AppFlow places the transferred data.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3destinationproperties.html#cfn-appflow-flow-s3destinationproperties-bucketname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER BucketPrefix
        The object key for the destination bucket in which Amazon AppFlow places the files.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3destinationproperties.html#cfn-appflow-flow-s3destinationproperties-bucketprefix
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER S3OutputFormatConfig
        The configuration that determines how Amazon AppFlow should format the flow output data when Amazon S3 is used as the destination.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3destinationproperties.html#cfn-appflow-flow-s3destinationproperties-s3outputformatconfig
        UpdateType: Mutable
        Type: S3OutputFormatConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppFlow.Flow.S3DestinationProperties')]
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
        $BucketName,
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
        $BucketPrefix,
        [parameter(Mandatory = $false)]
        $S3OutputFormatConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppFlow.Flow.S3DestinationProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
