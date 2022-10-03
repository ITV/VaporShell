function Add-VSPinpointInAppTemplateInAppMessageContent {
    <#
    .SYNOPSIS
        Adds an AWS::Pinpoint::InAppTemplate.InAppMessageContent resource property to the template. Specifies the configuration of an in-app message, including its header, body, buttons, colors, and images.

    .DESCRIPTION
        Adds an AWS::Pinpoint::InAppTemplate.InAppMessageContent resource property to the template.
Specifies the configuration of an in-app message, including its header, body, buttons, colors, and images.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html

    .PARAMETER BackgroundColor
        The background color for an in-app message banner, expressed as a hex color code such as #000000 for black.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-backgroundcolor
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER BodyConfig
        An object that contains configuration information about the header or title text of the in-app message.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-bodyconfig
        UpdateType: Mutable
        Type: BodyConfig

    .PARAMETER HeaderConfig
        An object that contains configuration information about the header or title text of the in-app message.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-headerconfig
        UpdateType: Mutable
        Type: HeaderConfig

    .PARAMETER ImageUrl
        The URL of the image that appears on an in-app message banner.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-imageurl
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER PrimaryBtn
        An object that contains configuration information about the primary button in an in-app message.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-primarybtn
        UpdateType: Mutable
        Type: ButtonConfig

    .PARAMETER SecondaryBtn
        An object that contains configuration information about the secondary button in an in-app message.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-secondarybtn
        UpdateType: Mutable
        Type: ButtonConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Pinpoint.InAppTemplate.InAppMessageContent')]
    [cmdletbinding()]
    Param
    (
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
        $BackgroundColor,
        [parameter(Mandatory = $false)]
        $BodyConfig,
        [parameter(Mandatory = $false)]
        $HeaderConfig,
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
        $ImageUrl,
        [parameter(Mandatory = $false)]
        $PrimaryBtn,
        [parameter(Mandatory = $false)]
        $SecondaryBtn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pinpoint.InAppTemplate.InAppMessageContent'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
