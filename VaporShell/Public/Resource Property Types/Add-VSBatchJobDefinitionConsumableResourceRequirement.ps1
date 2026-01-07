function Add-VSBatchJobDefinitionConsumableResourceRequirement {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.ConsumableResourceRequirement resource property to the template.

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.ConsumableResourceRequirement resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourcerequirement.html

    .PARAMETER ConsumableResource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourcerequirement.html#cfn-batch-jobdefinition-consumableresourcerequirement-consumableresource
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Quantity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourcerequirement.html#cfn-batch-jobdefinition-consumableresourcerequirement-quantity
        UpdateType: Mutable
        PrimitiveType: Long

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Batch.JobDefinition.ConsumableResourceRequirement')]
    [CmdletBinding()]

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
        $ConsumableResource,

        [Parameter(Mandatory = $true)]
        $Quantity

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.ConsumableResourceRequirement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
