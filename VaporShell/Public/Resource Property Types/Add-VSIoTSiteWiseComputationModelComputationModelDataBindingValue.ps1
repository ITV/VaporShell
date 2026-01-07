function Add-VSIoTSiteWiseComputationModelComputationModelDataBindingValue {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::ComputationModel.ComputationModelDataBindingValue resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::ComputationModel.ComputationModelDataBindingValue resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodeldatabindingvalue.html

    .PARAMETER AssetProperty
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodeldatabindingvalue.html#cfn-iotsitewise-computationmodel-computationmodeldatabindingvalue-assetproperty
        UpdateType: Mutable
        Type: AssetPropertyBindingValue

    .PARAMETER AssetModelProperty
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodeldatabindingvalue.html#cfn-iotsitewise-computationmodel-computationmodeldatabindingvalue-assetmodelproperty
        UpdateType: Mutable
        Type: AssetModelPropertyBindingValue

    .PARAMETER List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodeldatabindingvalue.html#cfn-iotsitewise-computationmodel-computationmodeldatabindingvalue-list
        UpdateType: Mutable
        Type: List
        ItemType: ComputationModelDataBindingValue
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTSiteWise.ComputationModel.ComputationModelDataBindingValue')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AssetProperty,

        [Parameter(Mandatory = $false)]
        $AssetModelProperty,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.IoTSiteWise.ComputationModel.ComputationModelDataBindingValue"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $List

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.ComputationModel.ComputationModelDataBindingValue'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
