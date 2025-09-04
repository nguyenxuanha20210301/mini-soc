# Mini‑SOC Report (VN) — Outline

**Ngày khởi tạo:** 2025-09-04

## 1. Tóm tắt & mục tiêu
Mô tả ngắn dự án, KPI (Coverage ≥10 ATT&CK, 3 Sigma + 2 Suricata + 1 YARA, 3 dashboards, MTTD < 1', FP −40%).

## 2. Kiến trúc lab
Sơ đồ, thành phần (Wazuh, Zeek, Suricata, Sysmon, DVWA).

## 3. Telemetry & ingest
Nguồn log, pipeline (Beats → Indexer/Elastic), index pattern.

## 4. Kịch bản mô phỏng & ATT&CK mapping
T1059.001 (PS), 7045 (Persistence), Web SQLi/XSS, v.v.

## 5. Detections
Sigma/Suricata/YARA — logic, test evidence (ảnh/ID sự kiện trích dẫn).

## 6. Dashboards & KPI
Ảnh minh họa, số liệu MTTD, xu hướng FP trước/sau tuning.

## 7. DFIR mini‑case
Timeline (CSV), RCA, IOC, khuyến nghị.

## 8. TI Enrichment
Nguồn IOC, cách match, dashboard TI Hits.

## 9. Bài học & mở rộng
SOAR mini, CI/CD rules, hardening.

## 10. Kết luận
Link repo/video/PDF.
