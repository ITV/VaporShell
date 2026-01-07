function Add-VSCleanRoomsAnalysisTemplateColumnClassificationDetails {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::AnalysisTemplate.ColumnClassificationDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::AnalysisTemplate.ColumnClassificationDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-columnclassificationdetails.html

    .PARAMETER ColumnMapping
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-columnclassificationdetails.html#cfn-cleanrooms-analysistemplate-columnclassificationdetails-columnmapping
        UpdateType: Immutable
        Type: List
        ItemType: SyntheticDataColumnProperties
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.AnalysisTemplate.ColumnClassificationDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CleanRooms.AnalysisTemplate.SyntheticDataColumnProperties"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ColumnMapping

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.AnalysisTemplate.ColumnClassificationDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
