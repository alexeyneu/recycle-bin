$bow = Split-Path  -Parent $MyInvocation.MyCommand.Path
if($env:PROCESSOR_ARCHITEW6432 -eq 'AMD64' -or $env:PROCESSOR_ARCHITECTURE -eq 'AMD64')
{
	New-Item  "Registry::HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}"  -Force
	Set-ItemProperty -literalpath  "Registry::HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}" -Name "(default)" -Value "Detour Class" 
	New-Item  "Registry::HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}\Version"  -Force
	Set-ItemProperty -literalpath  "Registry::HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}\Version" -Name "(default)" -Value "2.0" 
	New-Item  "Registry::HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}\InprocServer32"  -Force
	Set-ItemProperty -literalpath  "Registry::HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}\InprocServer32" -Name "(default)" -Value "$bow\detroit.dll" 
}
else
{
	New-Item  "Registry::HKEY_CLASSES_ROOT\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}"  -Force
	Set-ItemProperty -literalpath  "Registry::HKEY_CLASSES_ROOT\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}" -Name "(default)" -Value "Detour Class" 
	New-Item  "Registry::HKEY_CLASSES_ROOT\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}\Version"  -Force
	Set-ItemProperty -literalpath  "Registry::HKEY_CLASSES_ROOT\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}\Version" -Name "(default)" -Value "2.0" 
	New-Item  "Registry::HKEY_CLASSES_ROOT\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}\InprocServer32"  -Force
	Set-ItemProperty -literalpath  "Registry::HKEY_CLASSES_ROOT\CLSID\{F5353C58-CFD9-4204-8D92-D274C7578B53}\InprocServer32" -Name "(default)" -Value "$bow\detroit.dll" 
}
