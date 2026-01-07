function Add-VSCleanRoomsAnalysisTemplateSyntheticDataParameters {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::AnalysisTemplate.SyntheticDataParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::AnalysisTemplate.SyntheticDataParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-syntheticdataparameters.html

    .PARAMETER MlSyntheticDataParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-syntheticdataparameters.html#cfn-cleanrooms-analysistemplate-syntheticdataparameters-mlsyntheticdataparameters
        UpdateType: Immutable
        Type: MLSyntheticDataParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.AnalysisTemplate.SyntheticDataParameters')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $MlSyntheticDataParameters

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.AnalysisTemplate.SyntheticDataParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
