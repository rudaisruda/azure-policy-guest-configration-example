Configuration TestFileConfig {
    Import-DscResource -ModuleName DSCR_FileContent
    IniFile Apple {
        Path = "$env:SystemDrive\hereIam.ini"
        Section = ""
        Key = "Fruit_A"
        Value = "Apple"
    }
    IniFile Banana {
        Path = "$env:SystemDrive\hereIam.ini"
        Section = ""
        Key = "Fruit_B"
        Value = "Banana"
    }
}

TestFileConfig