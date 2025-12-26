#!/bin/ash
#
# PassWall2 Base Installer for OpenWrt 24.10.x
#
# Features:
# - Install PassWall2 + sing-box + xray + hysteria
# - Iran GeoIP / GeoSite defaults
# - Full TCP redirect (1:65535)
# - DNS rebind fix for Iranian domains
# - Safe to extend (UI / Failover / Theme)
#
# Author: DARKMATTER
# License: GPLv2
#

set -e

### ---------- Helpers ----------
log() { echo "[INFO] $1"; }
ok()  { echo "[ OK ] $1"; }
err() { echo "[ERR ] $1"; exit 1; }

### ---------- Pre-check ----------
[ -f /etc/openwrt_release ] || err "OpenWrt not detected"
. /etc/openwrt_release

### ---------- Update feeds ----------
log "Updating package lists..."
opkg update

### ---------- dnsmasq-full ----------
log "Installing dnsmasq-full..."
if opkg list-installed | grep -q "^dnsmasq "; then
    opkg remove dnsmasq
fi
opkg install dnsmasq-full
ok "dnsmasq-full ready"

### ---------- Required packages ----------
log "Installing required kernel packages..."
opkg install kmod-nft-tproxy kmod-nft-socket wget-ssl
ok "Kernel dependencies installed"

### ---------- PassWall2 repo key ----------
log "Adding PassWall2 repository key..."
wget -O /tmp/passwall.pub https://master.dl.sourceforge.net/project/openwrt-passwall-build/passwall.pub
opkg-key add /tmp/passwall.pub
ok "Repository key added"

### ---------- PassWall2 feeds ----------
log "Adding PassWall2 feeds..."
read release arch << EOF
$(. /etc/openwrt_release ; echo ${DISTRIB_RELEASE%.*} $DISTRIB_ARCH)
EOF

for feed in passwall_packages passwall2; do
    grep -q "$feed" /etc/opkg/customfeeds.conf 2>/dev/null || \
    echo "src/gz $feed https://master.dl.sourceforge.net/project/openwrt-passwall-build/releases/packages-$release/$arch/$feed" \
    >> /etc/opkg/customfeeds.conf
done
ok "Feeds added"

### ---------- Install PassWall2 ----------
log "Installing PassWall2 core packages..."
opkg update
opkg install \
  luci-app-passwall2 \
  sing-box \
  xray-core \
  hysteria \
  iptables \
  v2ray-geoip \
  v2ray-geosite \
  v2ray-geosite-ir
ok "PassWall2 installed"

### ---------- Iran defaults ----------
log "Applying Iran Geo rules..."

sed -i "s/China/Iran/g" /etc/config/passwall2
sed -i "s/geoip:cn/geoip:ir/g" /etc/config/passwall2
sed -i "s/geosite:cn/geosite:category-ir\next:iran.dat:all/g" /etc/config/passwall2

sed -i "s/China/Iran/g" /usr/share/passwall2/0_default_config
sed -i "s/geoip:cn/geoip:ir/g" /usr/share/passwall2/0_default_config
sed -i "s/geosite:cn/geosite:category-ir\next:iran.dat:all/g" /usr/share/passwall2/0_default_config

ok "Iran rules applied"

### ---------- Full TCP redirect ----------
log "Enabling full TCP redirect..."
sed -i "s|option tcp_redir_ports '.*'|option tcp_redir_ports '1:65535'|" \
    /usr/share/passwall2/0_default_config
sed -i "s|option tcp_redir_ports '.*'|option tcp_redir_ports '1:65535'|" \
    /etc/config/passwall2
ok "TCP redirect enabled"

### ---------- DNS rebind (IR) ----------
log "Adding Iranian rebind domains..."
for d in qmb.ir medu.ir tamin.ir ebanksepah.ir banksepah.ir gov.ir \
         tm.tipax.ir my.irancell.ir sb24.ir bsi.ir; do
    uci add_list dhcp.@dnsmasq[0].rebind_domain="$d"
done
uci commit dhcp
ok "DNS rebind configured"

### ---------- Done ----------
ok "PassWall2 base installation completed"
echo "Reboot recommended"
### -- Restart uhttpd to clear cache --
info "Rebooting system in 5 seconds..."
sleep 5
reboot

