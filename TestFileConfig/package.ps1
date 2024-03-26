# Create a package that will audit and apply the configuration (Set)
$params = @{
    Name          = 'TestFileConfig'
    Configuration = './TestFileConfig/localhost.mof'
    Type          = 'AuditAndSet' # AuditAndSet, Audit
    Force         = $true
    Path          = './TestFileConfig/'
}
New-GuestConfigurationPackage @params