function Add-VSBatchJobDefinitionEksContainerResourceRequirements {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.EksContainerResourceRequirements resource property to the template.

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.EksContainerResourceRequirements resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerresourcerequirements.html

    .PARAMETER Limits
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerresourcerequirements.html#cfn-batch-jobdefinition-ekscontainerresourcerequirements-limits
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Requests
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerresourcerequirements.html#cfn-batch-jobdefinition-ekscontainerresourcerequirements-requests
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Batch.JobDefinition.EksContainerResourceRequirements')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Limits,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Requests

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.EksContainerResourceRequirements'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
