$sysprep = 'C:\Windows\System32\Sysprep\Sysprep.exe'
$arg = '/generalize /oobe /quiet /shutdown'
Invoke-Command -ScriptBlock {param($sysprep,$arg) Start-Process -FilePath $sysprep -ArgumentList $arg} -ArgumentList $sysprep,$arg
