# PassWall2 Base Installer (OpenWrt 24.10)

Clean and extendable PassWall2 base installer.

## Features
- PassWall2 + sing-box + xray + hysteria
- Iran GeoIP / GeoSite defaults
- Full TCP redirect
- DNS rebind fixes
- Ready for UI / Failover extensions

## Install
sh -c "$(wget -O- https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh)"

## Install 2

cd /tmp
wget https://raw.githubusercontent.com/iranfreenet/passwall2/main/install_passwall2_base.sh
chmod +x install_passwall2_base.sh
./install_passwall2_base.sh
