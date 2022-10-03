function New-VSKMSKey {
    <#
    .SYNOPSIS
        Adds an AWS::KMS::Key resource to the template. The AWS::KMS::Key resource specifies a symmetric or asymmetric: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html KMS key: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys in AWS Key Management Service (AWS KMS.

    .DESCRIPTION
        Adds an AWS::KMS::Key resource to the template. The AWS::KMS::Key resource specifies a symmetric or asymmetric: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html KMS key: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#kms_keys in AWS Key Management Service (AWS KMS.

You can use the AWS::KMS::Key resource to specify a symmetric or asymmetric multi-Region primary key. To specify a replica key, use the AWS::KMS::ReplicaKey: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-replicakey.html resource. For information about multi-Region keys, see Multi-Region keys: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html in the *AWS Key Management Service Developer Guide*.

You cannot use the AWS::KMS::Key resource to specify a KMS key with imported key material: https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html or a KMS key in a custom key store: https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html.

**Note**

AWS KMS is replacing the term *customer master key (CMK* with *AWS KMS key* and *KMS key*. The concept has not changed. To prevent breaking changes, AWS KMS is keeping some variations of this term.

You can use symmetric KMS keys to encrypt and decrypt small amounts of data, but they are more commonly used to generate data keys and data key pairs. You can also use symmetric KMS key to encrypt data stored in AWS services that are integrated with AWS KMS: http://aws.amazon.com/kms/features/#AWS_Service_Integration. For more information, see What is AWS Key Management Service?: https://docs.aws.amazon.com/kms/latest/developerguide/overview.html in the *AWS Key Management Service Developer Guide*.

You can use asymmetric KMS keys to encrypt and decrypt data or sign messages and verify signatures. To create an asymmetric key, you must specify an asymmetric KeySpec value and a KeyUsage value.

**Important**

If you change the value of the KeyUsage, KeySpec, or MultiRegion property on an existing KMS key, the existing KMS key is scheduled for deletion: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html and a new KMS key is created with the specified value.

While scheduled for deletion, the existing KMS key becomes unusable. If you don't cancel the scheduled deletion: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html#deleting-keys-scheduling-key-deletion of the existing KMS key outside of CloudFormation, all data encrypted under the existing KMS key becomes unrecoverable when the KMS key is deleted.

**Regions**

AWS KMS CloudFormation resources are supported in all Regions in which AWS CloudFormation is supported. However, in the Asia Pacific (Jakarta Region (ap-southeast-3, you cannot use a CloudFormation template to create or manage asymmetric KMS keys or multi-Region KMS keys (primary or replica.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html

    .PARAMETER LogicalId
        The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template. Use the logical name to reference the resource in other parts of the template. For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

    .PARAMETER Description
        A description of the KMS key. Use a description that helps you to distinguish this KMS key from others in the account, such as its intended use.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-description
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Enabled
        Specifies whether the KMS key is enabled. Disabled KMS keys cannot be used in cryptographic operations.
When Enabled is true, the *key state* of the KMS key is Enabled. When Enabled is false, the key state of the KMS key is Disabled. The default value is true.
The actual key state of the KMS key might be affected by actions taken outside of CloudFormation, such as running the EnableKey: https://docs.aws.amazon.com/kms/latest/APIReference/API_EnableKey.html, DisableKey: https://docs.aws.amazon.com/kms/latest/APIReference/API_DisableKey.html, or ScheduleKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html operations.
For information about the key states of a KMS key, see Key state: Effect on your KMS key: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html in the *AWS Key Management Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER EnableKeyRotation
        Enables automatic rotation of the key material for the specified KMS key. By default, automatic key rotation is not enabled.
AWS KMS does not support automatic key rotation on asymmetric KMS keys. For asymmetric KMS keys, omit the EnableKeyRotation property or set it to false.
When you enable automatic rotation, AWS KMS automatically creates new key material for the KMS key 365 days after the enable or reenable date and every 365 days thereafter. AWS KMS retains all key material until you delete the KMS key. For detailed information about automatic key rotation, see Rotating KMS keys: https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html in the *AWS Key Management Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enablekeyrotation
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER KeyPolicy
        The key policy that authorizes use of the KMS key. The key policy must conform to the following rules.
+ The key policy must allow the caller to make a subsequent PutKeyPolicy: https://docs.aws.amazon.com/kms/latest/APIReference/API_PutKeyPolicy.html request on the KMS key. This reduces the risk that the KMS key becomes unmanageable. For more information, refer to the scenario in the Default key policy: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam section of the * *AWS Key Management Service Developer Guide* *.
+ Each statement in the key policy must contain one or more principals. The principals in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal for example, an IAM user or role, you might need to enforce a delay before including the new principal in a key policy because the new principal might not be immediately visible to AWS KMS. For more information, see Changes that I make are not always immediately visible: https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency in the *AWS Identity and Access Management User Guide*.
+ The key policy size limit is 32 kilobytes 32768 bytes.
If you are unsure of which policy to use, consider the *default key policy*. This is the key policy that AWS KMS applies to KMS keys that are created by using the CreateKey API with no specified key policy. It gives the AWS account that owns the key permission to perform all operations on the key. It also allows you write IAM policies to authorize access to the key. For details, see Default key policy: https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default in the *AWS Key Management Service Developer Guide*.
*Minimum*: 1
*Maximum*: 32768

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keypolicy
        UpdateType: Mutable
        PrimitiveType: Json

    .PARAMETER KeyUsage
        Determines the cryptographic operations: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations for which you can use the KMS key. The default value is ENCRYPT_DECRYPT. This property is required only for asymmetric KMS keys. You can't change the KeyUsage value after the KMS key is created.
If you change the KeyUsage of an existing KMS key, the existing KMS key is scheduled for deletion and a new KMS key is created with the specified KeyUsage value. While the scheduled deletion is pending, you can't use the existing KMS key. Unless you cancel the scheduled deletion: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html#deleting-keys-scheduling-key-deletion of the KMS key outside of CloudFormation, all data encrypted under the existing KMS key becomes unrecoverable when the KMS key is deleted.
Select only one valid value.
+ For symmetric KMS keys, omit the property or specify ENCRYPT_DECRYPT.
+ For asymmetric KMS keys with RSA key material, specify ENCRYPT_DECRYPT or SIGN_VERIFY.
+ For asymmetric KMS keys with ECC key material, specify SIGN_VERIFY.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyusage
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER KeySpec
        Specifies the type of KMS key to create. The default value, SYMMETRIC_DEFAULT, creates a KMS key with a 256-bit symmetric key for encryption and decryption. For help choosing a key spec for your KMS key, see How to choose Your KMS key configuration: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html in the *AWS Key Management Service Developer Guide*.
The KeySpec property determines whether the KMS key contains a symmetric key or an asymmetric key pair. It also determines the encryption algorithms or signing algorithms that the KMS key supports. You can't change the KeySpec after the KMS key is created. To further restrict the algorithms that can be used with the KMS key, use a condition key in its key policy or IAM policy. For more information, see kms:EncryptionAlgorithm: https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm or kms:Signing Algorithm: https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm in the *AWS Key Management Service Developer Guide*.
If you change the KeySpec of an existing KMS key, the existing KMS key is scheduled for deletion and a new KMS key is created with the specified KeySpec value. While the scheduled deletion is pending, you can't use the existing KMS key. Unless you cancel the scheduled deletion: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html#deleting-keys-scheduling-key-deletion of the KMS key outside of CloudFormation, all data encrypted under the existing KMS key becomes unrecoverable when the KMS key is deleted.
AWS services that are integrated with AWS KMS: http://aws.amazon.com/kms/features/#AWS_Service_Integration use symmetric KMS keys to protect your data. These services do not support asymmetric KMS keys. For help determining whether a KMS key is symmetric or asymmetric, see Identifying Symmetric and Asymmetric KMS keys: https://docs.aws.amazon.com/kms/latest/developerguide/find-symm-asymm.html in the *AWS Key Management Service Developer Guide*.
AWS KMS supports the following key specs for KMS keys:
+ Symmetric key default
+ SYMMETRIC_DEFAULT AES-256-GCM
+ Asymmetric RSA key pairs
+ RSA_2048
+ RSA_3072
+ RSA_4096
+ Asymmetric NIST-recommended elliptic curve key pairs
+ ECC_NIST_P256 secp256r1
+ ECC_NIST_P384 secp384r1
+ ECC_NIST_P521 secp521r1
+ Other asymmetric elliptic curve key pairs
+ ECC_SECG_P256K1 secp256k1, commonly used for cryptocurrencies.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyspec
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MultiRegion
        Creates a multi-Region primary key that you can replicate in other AWS Regions.
If you change the MultiRegion property of an existing KMS key, the existing KMS key is scheduled for deletion and a new KMS key is created with the specified Multi-Region value. While the scheduled deletion is pending, you can't use the existing KMS key. Unless you cancel the scheduled deletion: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html#deleting-keys-scheduling-key-deletion of the KMS key outside of CloudFormation, all data encrypted under the existing KMS key becomes unrecoverable when the KMS key is deleted.
For a multi-Region key, set to this property to true. For a single-Region key, omit this property or set it to false. The default value is false.
*Multi-Region keys* are an AWS KMS feature that lets you create multiple interoperable KMS keys in different AWS Regions. Because these KMS keys have the same key ID, key material, and other metadata, you can use them to encrypt data in one AWS Region and decrypt it in a different AWS Region without making a cross-Region call or exposing the plaintext data. For more information, see Multi-Region keys: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html in the *AWS Key Management Service Developer Guide*.
You can create a symmetric or asymmetric multi-Region key, and you can create a multi-Region key with imported key material. However, you cannot create a multi-Region key in a custom key store.
To create a replica of this primary key in a different AWS Region , create an AWS::KMS::ReplicaKey: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-replicakey.html resource in a CloudFormation stack in the replica Region. Specify the key ARN of this primary key.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-multiregion
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER PendingWindowInDays
        Specifies the number of days in the waiting period before AWS KMS deletes a KMS key that has been removed from a CloudFormation stack. Enter a value between 7 and 30 days. The default value is 30 days.
When you remove a KMS key from a CloudFormation stack, AWS KMS schedules the KMS key for deletion and starts the mandatory waiting period. The PendingWindowInDays property determines the length of waiting period. During the waiting period, the key state of KMS key is Pending Deletion or Pending Replica Deletion, which prevents the KMS key from being used in cryptographic operations. When the waiting period expires, AWS KMS permanently deletes the KMS key.
AWS KMS will not delete a multi-Region primary key: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html that has replica keys. If you remove a multi-Region primary key from a CloudFormation stack, its key state changes to PendingReplicaDeletion so it cannot be replicated or used in cryptographic operations. This state can persist indefinitely. When the last of its replica keys is deleted, the key state of the primary key changes to PendingDeletion and the waiting period specified by PendingWindowInDays begins. When this waiting period expires, AWS KMS deletes the primary key. For details, see Deleting multi-Region keys: https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-delete.html in the *AWS Key Management Service Developer Guide*.
You cannot use a CloudFormation template to cancel deletion of the KMS key after you remove it from the stack, regardless of the waiting period. If you specify a KMS key in your template, even one with the same name, CloudFormation creates a new KMS key. To cancel deletion of a KMS key, use the AWS KMS console or the CancelKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_CancelKeyDeletion.html operation.
For information about the Pending Deletion and Pending Replica Deletion key states, see Key state: Effect on your KMS key: https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html in the *AWS Key Management Service Developer Guide*. For more information about deleting KMS keys, see the ScheduleKeyDeletion: https://docs.aws.amazon.com/kms/latest/APIReference/API_ScheduleKeyDeletion.html operation in the *AWS Key Management Service API Reference* and Deleting KMS keys: https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html in the *AWS Key Management Service Developer Guide*.
*Minimum*: 7
*Maximum*: 30

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-pendingwindowindays
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER Tags
        Assigns one or more tags to the replica key.
Tagging or untagging a KMS key can allow or deny permission to the KMS key. For details, see ABAC for AWS KMS: https://docs.aws.amazon.com/kms/latest/developerguide/abac.html in the *AWS Key Management Service Developer Guide*.
For information about tags in AWS KMS, see Tagging keys: https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html in the *AWS Key Management Service Developer Guide*. For information about tags in CloudFormation, see Tag: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-tags
        UpdateType: Mutable
        Type: List
        ItemType: Tag
        DuplicatesAllowed: False

    .PARAMETER DeletionPolicy
        With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted. You specify a DeletionPolicy attribute for each resource that you want to control. If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

        To keep a resource when its stack is deleted, specify Retain for that resource. You can use retain for any resource. For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

        You must use one of the following options: "Delete","Retain","Snapshot"

    .PARAMETER UpdateReplacePolicy
        Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

        When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters. If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update. Recreating the resource generates a new physical ID. AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource. By default, AWS CloudFormation then deletes the old resource. Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

        For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

        You can apply the UpdateReplacePolicy attribute to any resource. UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID. For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one. The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance. The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference. For more information on resource update behavior, see Update Behaviors of Stack Resources.

        The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

        Note
        Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources. Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots. UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

        UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates. Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

        You must use one of the following options: "Delete","Retain","Snapshot"

    .PARAMETER DependsOn
        With the DependsOn attribute you can specify that the creation of a specific resource follows another. When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

        This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.


    .PARAMETER Metadata
        The Metadata attribute enables you to associate structured data with a resource. By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration. In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

        You must use a PSCustomObject containing key/value pairs here. This will be returned when describing the resource using AWS CLI.


    .PARAMETER UpdatePolicy
        Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource. AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

        You must use the "Add-UpdatePolicy" function here.
    .PARAMETER Condition
        Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KMS.Key')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript( {
                if ($_ -match "^[a-zA-Z0-9]*$") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String 'The LogicalID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.'))
                }
            })]
        [System.String]
        $LogicalId,
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
        $Description,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EnableKeyRotation,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KeyPolicy,
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
        $KeyUsage,
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
        $KeySpec,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MultiRegion,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PendingWindowInDays,
        [VaporShell.Core.TransformTag()]
        [parameter(Mandatory = $false)]
        $Tags,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CreationPolicy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CreationPolicy,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        $DeletionPolicy,
        [ValidateSet("Delete","Retain","Snapshot")]
        [System.String]
        $UpdateReplacePolicy,
        [parameter(Mandatory = $false)]
        [System.String[]]
        $DependsOn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "The UpdatePolicy parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Metadata,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.UpdatePolicy"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UpdatePolicy,
        [parameter(Mandatory = $false)]
        $Condition
    )
    Begin {
        $ResourceParams = @{
            LogicalId = $LogicalId
            Type = "AWS::KMS::Key"
        }
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                LogicalId {}
                DeletionPolicy {
                    $ResourceParams.Add("DeletionPolicy",$DeletionPolicy)
                }
                UpdateReplacePolicy {
                    $ResourceParams.Add("UpdateReplacePolicy",$UpdateReplacePolicy)
                }
                DependsOn {
                    $ResourceParams.Add("DependsOn",$DependsOn)
                }
                Metadata {
                    $ResourceParams.Add("Metadata",$Metadata)
                }
                UpdatePolicy {
                    $ResourceParams.Add("UpdatePolicy",$UpdatePolicy)
                }
                Condition {
                    $ResourceParams.Add("Condition",$Condition)
                }
                Tags {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name Tags -Value @($Tags)
                }
                KeyPolicy {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    if (!($ResourceParams["Properties"])) {
                        $ResourceParams.Add("Properties",([PSCustomObject]@{}))
                    }
                    $ResourceParams["Properties"] | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters[$key]
                }
            }
        }
    }
    End {
        $obj = New-VaporResource @ResourceParams
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KMS.Key'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$(@{$obj.LogicalId = $obj.Props} | ConvertTo-Json -Depth 5)`n"
    }
}
