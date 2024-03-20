# Create a package that will audit and apply the configuration (Set)
$params = @{
    Name          = 'TestEnvVarConfig'
    Configuration = './TestEnvVarConfig/localhost.mof'
    Type          = 'AuditAndSet'
    Force         = $true
    Path          = './TestEnvVarConfig/'
}
New-GuestConfigurationPackage @params