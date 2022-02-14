#Create a temporary directory to store NotePad++.
md -Path $env:temp\notepad++ -erroraction SilentlyContinue | Out-Null
$Download = join-path $env:temp\notepad++ notepad_installer.exe

#Download the NotePad++ installer.
Invoke-WebRequest 'https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.3/npp.8.3.Installer.x64.exe' -OutFile $Download

#Perform a silent installation of NotePad++.
Invoke-Expression "$Download /S"