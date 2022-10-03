function Add-VSSSMDocumentAttachmentsSource {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::Document.AttachmentsSource resource property to the template. Identifying information about a document attachment, including the file name and a key-value pair that identifies the location of an attachment to a document.

    .DESCRIPTION
        Adds an AWS::SSM::Document.AttachmentsSource resource property to the template.
Identifying information about a document attachment, including the file name and a key-value pair that identifies the location of an attachment to a document.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-document-attachmentssource.html

    .PARAMETER Key
        The key of a key-value pair that identifies the location of an attachment to a document.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-document-attachmentssource.html#cfn-ssm-document-attachmentssource-key
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Values
        The value of a key-value pair that identifies the location of an attachment to a document. The format for **Value** depends on the type of key you specify.
+ For the key *SourceUrl*, the value is an S3 bucket location. For example:
"Values":  "s3://doc-example-bucket/my-folder" ]
+ For the key *S3FileUrl*, the value is a file in an S3 bucket. For example:
"Values":  "s3://doc-example-bucket/my-folder/my-file.py" ]
+ For the key *AttachmentReference*, the value is constructed from the name of another SSM document in your account, a version number of that document, and a file attached to that document version that you want to reuse. For example:
"Values":  "MyOtherDocument/3/my-other-file.py" ]
However, if the SSM document is shared with you from another account, the full SSM document ARN must be specified instead of the document name only. For example:
"Values":  "arn:aws:ssm:us-east-2:111122223333:document/OtherAccountDocument/3/their-file.py" ]

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-document-attachmentssource.html#cfn-ssm-document-attachmentssource-values
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER Name
        The name of the document attachment file.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-document-attachmentssource.html#cfn-ssm-document-attachmentssource-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSM.Document.AttachmentsSource')]
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
        $Key,
        [parameter(Mandatory = $false)]
        $Values,
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
        $Name
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.Document.AttachmentsSource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
