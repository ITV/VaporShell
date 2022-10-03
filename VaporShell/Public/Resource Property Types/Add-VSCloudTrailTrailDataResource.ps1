function Add-VSCloudTrailTrailDataResource {
    <#
    .SYNOPSIS
        Adds an AWS::CloudTrail::Trail.DataResource resource property to the template. The Amazon S3 buckets, AWS Lambda functions, or Amazon DynamoDB tables that you specify in your event selectors for your trail to log data events. Data events provide information about the resource operations performed on or within a resource itself. These are also known as data plane operations. You can specify up to 250 data resources for a trail.

    .DESCRIPTION
        Adds an AWS::CloudTrail::Trail.DataResource resource property to the template.
The Amazon S3 buckets, AWS Lambda functions, or Amazon DynamoDB tables that you specify in your event selectors for your trail to log data events. Data events provide information about the resource operations performed on or within a resource itself. These are also known as data plane operations. You can specify up to 250 data resources for a trail.

**Note**

The total number of allowed data resources is 250. This number can be distributed between 1 and 5 event selectors, but the total cannot exceed 250 across all selectors.

If you are using advanced event selectors, the maximum total number of values for all conditions, across all advanced event selectors for the trail, is 500.

The following example demonstrates how logging works when you configure logging of all data events for an S3 bucket named bucket-1. In this example, the CloudTrail user specified an empty prefix, and the option to log both Read and Write data events.

1. A user uploads an image file to bucket-1.

1. The PutObject API operation is an Amazon S3 object-level API. It is recorded as a data event in CloudTrail. Because the CloudTrail user specified an S3 bucket with an empty prefix, events that occur on any object in that bucket are logged. The trail processes and logs the event.

1. A user uploads an object to an Amazon S3 bucket named arn:aws:s3:::bucket-2.

1. The PutObject API operation occurred for an object in an S3 bucket that the CloudTrail user didn't specify for the trail. The trail doesn’t log the event.

The following example demonstrates how logging works when you configure logging of AWS Lambda data events for a Lambda function named *MyLambdaFunction*, but not for all Lambda functions.

1. A user runs a script that includes a call to the *MyLambdaFunction* function and the *MyOtherLambdaFunction* function.

1. The Invoke API operation on *MyLambdaFunction* is an Lambda API. It is recorded as a data event in CloudTrail. Because the CloudTrail user specified logging data events for *MyLambdaFunction*, any invocations of that function are logged. The trail processes and logs the event.

1. The Invoke API operation on *MyOtherLambdaFunction* is an Lambda API. Because the CloudTrail user did not specify logging data events for all Lambda functions, the Invoke operation for *MyOtherLambdaFunction* does not match the function specified for the trail. The trail doesn’t log the event.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html

    .PARAMETER Type
        The resource type in which you want to log data events. You can specify the following *basic* event selector resource types:
+  AWS::S3::Object
+  AWS::Lambda::Function
+  AWS::DynamoDB::Table
The following resource types are also availble through *advanced* event selectors. Basic event selector resource types are valid in advanced event selectors, but advanced event selector resource types are not valid in basic event selectors. For more information, see AdvancedFieldSelector:Field: https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html#awscloudtrail-Type-AdvancedFieldSelector-Field.
+  AWS::S3Outposts::Object
+  AWS::ManagedBlockchain::Node
+  AWS::S3ObjectLambda::AccessPoint
+  AWS::EC2::Snapshot
+  AWS::S3::AccessPoint
+  AWS::DynamoDB::Stream

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Values
        An array of Amazon Resource Name ARN strings or partial ARN strings for the specified objects.
+ To log data events for all objects in all S3 buckets in your AWS account, specify the prefix as arn:aws:s3:::.
**Note**
This also enables logging of data event activity performed by any user or role in your AWS account, even if that activity is performed on a bucket that belongs to another AWS account.
+ To log data events for all objects in an S3 bucket, specify the bucket and an empty object prefix such as arn:aws:s3:::bucket-1/. The trail logs data events for all objects in this S3 bucket.
+ To log data events for specific objects, specify the S3 bucket and object prefix such as arn:aws:s3:::bucket-1/example-images. The trail logs data events for objects in this S3 bucket that match the prefix.
+ To log data events for all Lambda functions in your AWS account, specify the prefix as arn:aws:lambda.
**Note**
This also enables logging of Invoke activity performed by any user or role in your AWS account, even if that activity is performed on a function that belongs to another AWS account.
+ To log data events for a specific Lambda function, specify the function ARN.
**Note**
Lambda function ARNs are exact. For example, if you specify a function ARN *arn:aws:lambda:us-west-2:111111111111:function:helloworld*, data events will only be logged for *arn:aws:lambda:us-west-2:111111111111:function:helloworld*. They will not be logged for *arn:aws:lambda:us-west-2:111111111111:function:helloworld2*.
+ To log data events for all DynamoDB tables in your AWS account, specify the prefix as arn:aws:dynamodb.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-dataresource.html#cfn-cloudtrail-trail-dataresource-values
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CloudTrail.Trail.DataResource')]
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
        $Type,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudTrail.Trail.DataResource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
