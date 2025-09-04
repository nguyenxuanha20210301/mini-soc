# Atomic Red Team — Commands (Lab-safe variants)

> Chỉ chạy trong lab. Một số test nên dùng payload vô hại/inert.

## T1059.001 — PowerShell
```powershell
# Inert EncodedCommand (prints a string)
powershell.exe -enc ZWNobyAiVGVzdCBNaW5pLVNPQyIK
```

## Persistence via Service (7045)
```powershell
sc.exe create LabSvc binPath= "C:\Windows\System32\svchost.exe -k netsvcs" start= demand
sc.exe delete LabSvc
```

## Notes
- Đảm bảo Sysmon và Wazuh Agent hoạt động trước khi test.
- Ghi lại timestamp để đối chiếu DFIR timeline.
- Với test web, dùng DVWA (mức thấp) phía sau Nginx/Apache để sinh log.
