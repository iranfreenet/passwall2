# PassWall2 Base Installer (OpenWrt 24.10)

![OpenWrt](https://img.shields.io/badge/OpenWrt-24.10-blue)
![PassWall2](https://img.shields.io/badge/PassWall2-Base-green)
![License](https://img.shields.io/badge/License-GPLv2-orange)

---

## English

Clean, minimal, and extendable **PassWall2 base installer** for OpenWrt 24.10.x.  
This repository provides a reliable foundation for PassWall2, designed to be used as a base and extended with optional addons such as UI customization, Failover, and routing optimizations.

### Features
- PassWall2 + sing-box + xray-core + hysteria
- Iran GeoIP / GeoSite default rules
- Full TCP redirect (1:65535)
- DNS rebind fixes for Iranian domains
- Clean base installer, ready for addons (UI / Failover / Theme)

### Requirements
- OpenWrt **24.10.x**
- Internet access during installation
- Root access

### Install (One-Line)
```sh
sh -c "$(wget -O- https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh)"

### Install (Manual)
```sh
cd /tmp
wget https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh
chmod +x install_passwall2_base.sh
./install_passwall2_base.sh


Optional Addons (Planned)
UI customization (icons, labels, themes)

Iran Failover & smart routing

Dark mode / custom LuCI themes

Extra security and performance tuning

فارسی
نصب‌کننده‌ی پایه PassWall2 برای OpenWrt نسخه 24.10.x
این مخزن یک پایه‌ی تمیز، پایدار و قابل توسعه برای PassWall2 فراهم می‌کند که می‌توان آن را با افزونه‌های مختلف گسترش داد.

ویژگی‌ها
نصب PassWall2 به‌همراه sing-box، xray-core و hysteria

اعمال قوانین پیش‌فرض GeoIP و GeoSite مخصوص ایران

فوروارد کامل ترافیک TCP (از پورت 1 تا 65535)

رفع مشکل DNS Rebind برای دامنه‌های ایرانی

نسخه‌ی پایه و تمیز، مناسب توسعه و افزودن افزونه‌ها

پیش‌نیازها
OpenWrt نسخه 24.10.x

دسترسی به اینترنت هنگام نصب

دسترسی root

نصب سریع (یک‌خطی)
sh
Copy code
sh -c "$(wget -O- https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh)"
نصب دستی
sh
Copy code
cd /tmp
wget https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh
chmod +x install_passwall2_base.sh
./install_passwall2_base.sh
