# Web Attacks (DVWA) — PortSwigger-inspired (lab only)

> Mục tiêu: tạo log web để viết rule/dashboards. Chỉ chạy trên DVWA nội bộ.

## SQLi (UNION) — DVWA Low
- Truy cập `http://<dvwa>/vulnerabilities/sqli/?id=1&Submit=Submit`
- Thử payload đơn giản: `id=1 UNION SELECT 1,2`
- Kỳ vọng: Log access chứa từ khóa `UNION` và `SELECT`

## XSS (Reflected)
- Tại DVWA XSS (Reflected), nhập: `<script>alert(1)</script>`
- Kỳ vọng: Log chứa chuỗi `<script`

## Gợi ý ship log
- Bật access/error logs chi tiết ở Nginx/Apache.
- Dùng Filebeat hoặc Wazuh Filebeat module đẩy về Elastic/Wazuh.
