# Wazuh Agent — Ghi chú cài đặt (Windows)

1) Tải bộ cài Wazuh Agent cho Windows (phiên bản tương thích với Manager).
2) Trong quá trình cài, nhập IP/hostname của Wazuh Manager (mặc định port 1514/1515).
3) Sau khi cài xong:
```powershell
# Enroll/Nối agent (nếu cần)
& "C:\Program Files (x86)\ossec-agent\agent-auth.exe" -m <IP_WAZUH_MANAGER>
Restart-Service Wazuh
```
4) Cài Sysmon với cấu hình trong repo:
```powershell
.\Sysmon64.exe -i .\agents\sysmon-config.xml
```
5) Xác nhận trên Dashboard đã thấy logs từ host Windows.
