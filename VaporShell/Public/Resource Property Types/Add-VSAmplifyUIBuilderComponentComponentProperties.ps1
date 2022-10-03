function Add-VSAmplifyUIBuilderComponentComponentProperties {
    <#
    .SYNOPSIS
        Adds an AWS::AmplifyUIBuilder::Component.ComponentProperties resource property to the template. The ComponentProperties property specifies the component's properties.

    .DESCRIPTION
        Adds an AWS::AmplifyUIBuilder::Component.ComponentProperties resource property to the template.
The ComponentProperties property specifies the component's properties.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperties.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AmplifyUIBuilder.Component.ComponentProperties')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AmplifyUIBuilder.Component.ComponentProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
