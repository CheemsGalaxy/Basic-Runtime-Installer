function Test-Command {
	param([string]$command)
	return  $null -ne(Get-Command -Name $Command -ErrorAction SilentlyContinue)
}

#winget check

Write-Host "---checking for winget---"
if(Test-Command -Command "winget") {
	Write-Host "winget is installed" -ForegroundColor Green
	winget --version
} else {
	Write-Host "winget not installed" -ForegroundColor Red
	write-Host "started install winget" -ForegroundColor Yellow
	Install-PackageProvider -Name NuGet -Force | Out-Null
	Install-Module -Name Microsoft.WinGet.Client -Force -Repository PSGallery | Out-Null
	Write-Host "Using Repair-WinGetPackageManager cmdlet to bootstrap WinGet..."
	Repair-WinGetPackageManager
	Write-Host "Done."
}

#chocolatey check
Write-Host "---checking for chocolatey---"
if(Test-Command -Command "choco") {
	Write-Host "Chocolatey is installed" -ForegroundColor Green
	choco -v
} else {
	Write-Host "chocolatey not installed" -ForegroundColor Red
	Write-Host "started install chocolatey"	-ForegroundColor Yellow
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
	choco -v
	Write-Host "Done."
}

winget install -e --id Oracle.JavaRuntimeEnvironment
Write-Host("JavaRuntime is done") -ForegroundColor Green
winget install -e --id KhronosGroup.VulkanSDK
Write-Host("VulkanSDK is done") -ForegroundColor Green
winget install -e --id Microsoft.DirectX
Write-Host("DirectX is done") -ForegroundColor Green
winget install -e --id Microsoft.DotNet.Framework.DeveloperPack_4
Write-Host(".NET Framework is done") -ForegroundColor Green

choco install webview2-runtime
Write-Host("webview2 runtime is done") -ForegroundColor Green
choco install dotnet
Write-Host(".NET is done") -ForegroundColor Green
choco install vcredist-all
Write-Host("Microsoft Visual C++ Runtime - all versions is done") -ForegroundColor Green
Pause


