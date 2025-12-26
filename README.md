# PassWall2 Base Installer (OpenWrt 24.10)

![OpenWrt](https://img.shields.io/badge/OpenWrt-24.10-blue)
![PassWall2](https://img.shields.io/badge/PassWall2-Base-green)
![License](https://img.shields.io/badge/License-GPLv2-orange)

---

## English

Clean and extendable PassWall2 base installer for OpenWrt 24.10.x.  
This project provides a minimal and reliable foundation for PassWall2, designed to be extended with addons.

### Features
- PassWall2 + sing-box + xray-core + hysteria
- Iran GeoIP / GeoSite default rules
- Full TCP redirect (1:65535)
- DNS rebind fixes for Iranian domains
- Clean base, ready for addons (UI / Failover / Theme)

### Install (One-Line)
```sh
sh -c "$(wget -O- https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh)"

### Install (Manual)
cd /tmp
wget https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh
chmod +x install_passwall2_base.sh
./install_passwall2_base.sh
Optional Addons (Planned)

UI customization (icons / labels / theme)

Iran Failover & smart routing

Dark mode / custom LuCI theme

Extra security & optimization tweaks

فارسی

نصب‌کننده‌ی پایه PassWall2 برای OpenWrt نسخه 24.10.x
این پروژه یک پایه‌ی تمیز، پایدار و قابل توسعه برای PassWall2 فراهم می‌کند.

ویژگی‌ها

نصب PassWall2 به‌همراه sing-box ،xray-core و hysteria

اعمال قوانین پیش‌فرض GeoIP و GeoSite ایران

فوروارد کامل ترافیک TCP (از پورت 1 تا 65535)

رفع مشکل DNS Rebind برای دامنه‌های ایرانی

نسخه‌ی پایه و تمیز، آماده‌ی افزودن افزونه‌ها

نصب سریع (یک‌خطی)
sh -c "$(wget -O- https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh)"

نصب دستی
cd /tmp
wget https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh
chmod +x install_passwall2_base.sh
./install_passwall2_base.sh

