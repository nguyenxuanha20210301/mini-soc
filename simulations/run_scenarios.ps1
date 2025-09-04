#requires -version 5
<# 
  Mini-SOC lab safe scenarios
  - PowerShell Encoded (inert)
  - Service create/delete (7045)
#>

Write-Host "[*] Running inert PowerShell EncodedCommand..."
powershell.exe -enc ZWNobyAiVGVzdCBNaW5pLVNPQyIK

Write-Host "[*] Creating a demo service (7045)..."
sc.exe create LabSvc binPath= "C:\Windows\System32\svchost.exe -k netsvcs" start= demand
Start-Sleep -Seconds 2
sc.exe delete LabSvc

Write-Host "[+] Done. Check your SIEM for alerts."
