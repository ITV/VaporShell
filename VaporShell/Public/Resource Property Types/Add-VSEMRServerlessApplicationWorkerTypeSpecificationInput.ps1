function Add-VSEMRServerlessApplicationWorkerTypeSpecificationInput {
    <#
    .SYNOPSIS
        Adds an AWS::EMRServerless::Application.WorkerTypeSpecificationInput resource property to the template. 

    .DESCRIPTION
        Adds an AWS::EMRServerless::Application.WorkerTypeSpecificationInput resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-workertypespecificationinput.html

    .PARAMETER ImageConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-workertypespecificationinput.html#cfn-emrserverless-application-workertypespecificationinput-imageconfiguration
        UpdateType: Conditional
        Type: ImageConfigurationInput

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMRServerless.Application.WorkerTypeSpecificationInput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ImageConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMRServerless.Application.WorkerTypeSpecificationInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
