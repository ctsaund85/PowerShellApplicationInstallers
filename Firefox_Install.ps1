#Create a temporary directory to store Mozilla Firefox.
md -Path $env:temp\firefoxinstall -erroraction SilentlyContinue | Out-Null
$Download = join-path $env:temp\firefoxinstall firefox_installer.exe

#Download the Mozilla Firefox installer.
Invoke-WebRequest 'https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US' -OutFile $Download

#Perform a silent installation of Mozilla Firefox.
Invoke-Expression "$Download /S"