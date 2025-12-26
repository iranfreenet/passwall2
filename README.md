# PassWall2 Base Installer (OpenWrt 24.10)

## English

Clean and extendable PassWall2 base installer for OpenWrt 24.10.x.

### Features
- PassWall2 + sing-box + xray + hysteria
- Iran GeoIP / GeoSite defaults
- Full TCP redirect (1:65535)
- DNS rebind fixes for Iranian domains
- Ready for UI / Failover extensions

### Install (One-Line)
```sh
sh -c "$(wget -O- https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh)"

### Install (Manual)
cd /tmp
wget https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh
chmod +x install_passwall2_base.sh
./install_passwall2_base.sh

فارسی

نصب‌کننده‌ی پایه PassWall2 برای OpenWrt نسخه 24.10.x
این اسکریپت به‌صورت تمیز و قابل توسعه طراحی شده است.

ویژگی‌ها

نصب PassWall2 به‌همراه sing-box ،xray و hysteria

تنظیم پیش‌فرض GeoIP و GeoSite برای ایران

فوروارد کامل ترافیک TCP (1 تا 65535)

رفع مشکل DNS Rebind برای دامنه‌های ایرانی

آماده برای افزودن افزونه‌های ظاهری (UI) و Failover

نصب سریع (یک‌خطی)
sh -c "$(wget -O- https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh)"

نصب دستی
cd /tmp
wget https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh
chmod +x install_passwall2_base.sh
./install_passwall2_base.sh

