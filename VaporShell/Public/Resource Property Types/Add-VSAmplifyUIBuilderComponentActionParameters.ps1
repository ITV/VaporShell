function Add-VSAmplifyUIBuilderComponentActionParameters {
    <#
    .SYNOPSIS
        Adds an AWS::AmplifyUIBuilder::Component.ActionParameters resource property to the template. The ActionParameters property specifies the event action configuration for an element of a Component or ComponentChild. Use for the workflow feature in Amplify Studio that allows you to bind events and actions to components. ActionParameters defines the action that is performed when an event occurs on the component.

    .DESCRIPTION
        Adds an AWS::AmplifyUIBuilder::Component.ActionParameters resource property to the template.
The ActionParameters property specifies the event action configuration for an element of a Component or ComponentChild. Use for the workflow feature in Amplify Studio that allows you to bind events and actions to components. ActionParameters defines the action that is performed when an event occurs on the component.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html

    .PARAMETER Type
        The type of navigation action. Valid values are url and anchor. This value is required for a navigation action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-type
        UpdateType: Mutable
        Type: ComponentProperty

    .PARAMETER Url
        The URL to the location to open. Specify this value for a navigation action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-url
        UpdateType: Mutable
        Type: ComponentProperty

    .PARAMETER Anchor
        The HTML anchor link to the location to open. Specify this value for a navigation action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-anchor
        UpdateType: Mutable
        Type: ComponentProperty

    .PARAMETER Target
        The element within the same component to modify when the action occurs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-target
        UpdateType: Mutable
        Type: ComponentProperty

    .PARAMETER Global
        Specifies whether the user should be signed out globally. Specify this value for an auth sign out action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-global
        UpdateType: Mutable
        Type: ComponentProperty

    .PARAMETER Model
        The name of the data model. Use when the action performs an operation on an Amplify DataStore model.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-model
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Id
        The unique ID of the component that the ActionParameters apply to.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-id
        UpdateType: Mutable
        Type: ComponentProperty

    .PARAMETER Fields
        A dictionary of key-value pairs mapping Amplify Studio properties to fields in a data model. Use when the action performs an operation on an Amplify DataStore model.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-fields
        UpdateType: Mutable
        Type: ComponentProperties

    .PARAMETER State
        A key-value pair that specifies the state property name and its initial value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-actionparameters.html#cfn-amplifyuibuilder-component-actionparameters-state
        UpdateType: Mutable
        Type: MutationActionSetStateParameter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AmplifyUIBuilder.Component.ActionParameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Type,
        [parameter(Mandatory = $false)]
        $Url,
        [parameter(Mandatory = $false)]
        $Anchor,
        [parameter(Mandatory = $false)]
        $Target,
        [parameter(Mandatory = $false)]
        $Global,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Model,
        [parameter(Mandatory = $false)]
        $Id,
        [parameter(Mandatory = $false)]
        $Fields,
        [parameter(Mandatory = $false)]
        $State
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AmplifyUIBuilder.Component.ActionParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
