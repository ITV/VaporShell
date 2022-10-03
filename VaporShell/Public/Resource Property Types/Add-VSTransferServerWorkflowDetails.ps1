function Add-VSTransferServerWorkflowDetails {
    <#
    .SYNOPSIS
        Adds an AWS::Transfer::Server.WorkflowDetails resource property to the template. Container for the WorkflowDetail data type. It is used by actions that trigger a workflow to begin execution.

    .DESCRIPTION
        Adds an AWS::Transfer::Server.WorkflowDetails resource property to the template.
Container for the WorkflowDetail data type. It is used by actions that trigger a workflow to begin execution.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-workflowdetails.html

    .PARAMETER OnUpload
        A trigger that starts a workflow: the workflow begins to execute after a file is uploaded.
To remove an associated workflow from a server, you can provide an empty OnUpload object, as in the following example.
aws transfer update-server --server-id s-01234567890abcdef --workflow-details '{"OnUpload":]}'

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-workflowdetails.html#cfn-transfer-server-workflowdetails-onupload
        ItemType: WorkflowDetail
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Transfer.Server.WorkflowDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Transfer.Server.WorkflowDetail"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $OnUpload
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Transfer.Server.WorkflowDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
