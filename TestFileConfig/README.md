# TestFileConfig
Tato ukázková politika konfigurace slouží jako příklad. Při úspěšném aplikování bude na cílovém stroji na systémovém disky vytvořen txt soubor `hereIam.txt`.

1. Připrav [PowerShell DSC konfiguraci](https://learn.microsoft.com/en-us/powershell/dsc/getting-started/wingettingstarted?view=dsc-1.1&viewFallbackFrom=dsc-2.0), kterou chceš aplikovat viz [config.ps1](config.ps1)
2. Vygeneruj `*.zip` balíček pro [Azure Machine Configration](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/how-to/develop-custom-package/overview), který bude umístěn na **HTTPS** endpointu dostupném ze zařízení (=serveru), který bude konfigurován viz [package.ps1](package.ps1)
3. Vytvoř soubor politky viz [policy.ps1](policy.ps1) 
    - **PolicyId** je GUID, generuj v pwsh pomocí `[guid]::NewGuid()`
    - **ContentUri** je umístění konfiguračního balíčku zevnitř stroje
    - *Ostatní parametry netřeba popisovat, ale je potřeba je upravit!*
4. Nahraj politiku do [Azure Policy](https://learn.microsoft.com/en-us/azure/governance/policy/overview) (nahraje se do subskripce, pro uložení do management groupy je potřeba specifikovat další parametr): `New-AzPolicyDefinition -Name TestFileConfig -Policy .\policies\deployIfNotExists.json\TestFileConfig_DeployIfNotExists.json`
5. Dál je politiku potřeba přiřadit a aplikovat například přes management portál.

> [!WARNING]
> Don't use secrets or confidential information in custom content packages.