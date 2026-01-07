function Add-VSSageMakerDomainStudioWebPortalSettings {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Domain.StudioWebPortalSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Domain.StudioWebPortalSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html

    .PARAMETER HiddenSageMakerImageVersionAliases
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddensagemakerimageversionaliases
        UpdateType: Mutable
        Type: List
        ItemType: HiddenSageMakerImage
        DuplicatesAllowed: False

    .PARAMETER HiddenAppTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddenapptypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER HiddenInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddeninstancetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER HiddenMlTools
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddenmltools
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Domain.StudioWebPortalSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.Domain.HiddenSageMakerImage"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $HiddenSageMakerImageVersionAliases,

        [Parameter(Mandatory = $false)]
        $HiddenAppTypes,

        [Parameter(Mandatory = $false)]
        $HiddenInstanceTypes,

        [Parameter(Mandatory = $false)]
        $HiddenMlTools

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Domain.StudioWebPortalSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
