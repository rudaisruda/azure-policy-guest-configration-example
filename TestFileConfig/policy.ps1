$PolicyConfig      = @{
    PolicyId      = '00000000-0000-0000-0000-000000000000'
    ContentUri    = "https://<hidden>/machine-configuration/TestFileConfig.zip"
    DisplayName   = 'TestFileConfig policy'
    Description   = 'TestFileConfig policy'
    Path          = './policies/deployIfNotExists.json'
    Platform      = 'Windows'
    PolicyVersion = '1.0.0'
    Mode          = 'ApplyAndMonitor'
  }
  
  New-GuestConfigurationPolicy @PolicyConfig