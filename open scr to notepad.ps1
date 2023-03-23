# Script to set the default program for .scr files to Notepad

# Define the registry key path and value names
$RegistryPath = "HKCU:\Software\Classes\.scr"
$ValueName = "PerceivedType"
$DefaultValueName = "(default)"

# Create the registry key if it doesn't exist
If (!(Test-Path $RegistryPath)) {
    New-Item -Path $RegistryPath -Force | Out-Null
}

# Set the perceived type to text
Set-ItemProperty -Path $RegistryPath -Name $ValueName -Value "text"

# Set the default program to Notepad
Set-ItemProperty -Path $RegistryPath -Name $DefaultValueName -Value "txtfile"

Write-Host "The default program for .scr files has been set to Notepad."
