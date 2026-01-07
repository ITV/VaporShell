function Add-VSBatchJobDefinitionConsumableResourceProperties {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.ConsumableResourceProperties resource property to the template.

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.ConsumableResourceProperties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourceproperties.html

    .PARAMETER ConsumableResourceList
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourceproperties.html#cfn-batch-jobdefinition-consumableresourceproperties-consumableresourcelist
        UpdateType: Mutable
        Type: List
        ItemType: ConsumableResourceRequirement
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Batch.JobDefinition.ConsumableResourceProperties')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Batch.JobDefinition.ConsumableResourceRequirement"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ConsumableResourceList

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.ConsumableResourceProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
