function Add-VSAmplifyUIBuilderComponentComponentOverridesValue {
    <#
    .SYNOPSIS
        Adds an AWS::AmplifyUIBuilder::Component.ComponentOverridesValue resource property to the template. The ComponentOverridesValue property specifies the value of the component's properties that can be overriden in a customized instance of the component.

    .DESCRIPTION
        Adds an AWS::AmplifyUIBuilder::Component.ComponentOverridesValue resource property to the template.
The ComponentOverridesValue property specifies the value of the component's properties that can be overriden in a customized instance of the component.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentoverridesvalue.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AmplifyUIBuilder.Component.ComponentOverridesValue')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AmplifyUIBuilder.Component.ComponentOverridesValue'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
