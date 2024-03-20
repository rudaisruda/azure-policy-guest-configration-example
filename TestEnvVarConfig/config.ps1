Configuration TestEnvVarConfig {
    Import-DscResource -Name 'Environment' -ModuleName 'PSDscResources'
    Environment MachineConfigurationExample {
        Name   = 'MC_ENV_EXAMPLE'
        Value  = 'This was set by machine configuration'
        Ensure = 'Present'
        Target = @('Process', 'Machine')
    }
}

TestEnvVarConfig