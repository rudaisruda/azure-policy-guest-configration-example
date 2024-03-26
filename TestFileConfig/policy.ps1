$PolicyConfig      = @{
    PolicyId      = '00000000-0000-0000-0000-000000000000'  # Replace with your policy ID, generate new using [Guid]::NewGuid()
    ContentUri    = "https://<hidden>/machine-configuration/TestFileConfig.zip" # Replace with your content URI (storage account URL)
    DisplayName   = 'TestFileConfig policy'
    Description   = 'TestFileConfig policy'
    Path          = './policies/deployIfNotExists.json'
    Platform      = 'Windows'
    PolicyVersion = '1.0.0' # Increase with every change
    Mode          = 'ApplyAndMonitor' # ApplyAndMonitor, ApplyAndAutoCorrect
  }
  
  New-GuestConfigurationPolicy @PolicyConfig