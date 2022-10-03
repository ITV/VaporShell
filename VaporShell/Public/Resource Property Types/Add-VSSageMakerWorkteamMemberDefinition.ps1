function Add-VSSageMakerWorkteamMemberDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Workteam.MemberDefinition resource property to the template. Defines an Amazon Cognito or your own OIDC IdP user group that is part of a work team.

    .DESCRIPTION
        Adds an AWS::SageMaker::Workteam.MemberDefinition resource property to the template.
Defines an Amazon Cognito or your own OIDC IdP user group that is part of a work team.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html

    .PARAMETER OidcMemberDefinition
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: OidcMemberDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html#cfn-sagemaker-workteam-memberdefinition-oidcmemberdefinition
        UpdateType: Mutable

    .PARAMETER CognitoMemberDefinition
        The Amazon Cognito user group that is part of the work team.

        Type: CognitoMemberDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html#cfn-sagemaker-workteam-memberdefinition-cognitomemberdefinition
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.Workteam.MemberDefinition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $OidcMemberDefinition,
        [parameter(Mandatory = $false)]
        $CognitoMemberDefinition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Workteam.MemberDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
