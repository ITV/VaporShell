function Add-VSQuickSightTemplateCustomActionNavigationOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.CustomActionNavigationOperation resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.CustomActionNavigationOperation resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionnavigationoperation.html

    .PARAMETER LocalNavigationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionnavigationoperation.html#cfn-quicksight-template-customactionnavigationoperation-localnavigationconfiguration
        UpdateType: Mutable
        Type: LocalNavigationConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.CustomActionNavigationOperation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $LocalNavigationConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.CustomActionNavigationOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
