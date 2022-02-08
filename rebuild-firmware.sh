#!/bin/bash
# OpenHUB6 firmware image builder for the HUB6 Safe
# William Franzin, wfranzin@gmail.com, Feb 6 2022
# Provided as-is, use at your own risk etc, it's free sw.

# Documentation: https://openwrt.org/docs/start
# Image Builder: https://downloads.openwrt.org/releases/19.07.8/targets/ar71xx/generic/openwrt-imagebuilder-19.07.8-ar71xx-generic.Linux-x86_64.tar.xz
# Using the Image Builder: https://openwrt.org/docs/guide-user/additional-software/imagebuilder

# Packages determined by using the command below on a development device
# echo $(opkg list-installed | sed -e "s/\s.*$//")
# Files contains the additional customizations on top of the stock fw

make image \
PROFILE="dragino2" \
PACKAGES="base-files busybox ca-bundle cgi-io coreutils coreutils-stty curl dnsmasq dropbear firewall fstools fwtool getrandom glib2 hostapd-common ip6tables iptables iw iwinfo jshn jsonfilter kernel kmod-ath kmod-ath9k kmod-ath9k-common kmod-cfg80211 kmod-gpio-button-hotplug kmod-ip6tables kmod-ipt-conntrack kmod-ipt-core kmod-ipt-nat kmod-ipt-offload kmod-lib-crc-ccitt kmod-mac80211 kmod-mii kmod-nf-conntrack kmod-nf-conntrack6 kmod-nf-flow kmod-nf-ipt kmod-nf-ipt6 kmod-nf-nat kmod-nf-reject kmod-nf-reject6 kmod-nls-base kmod-ppp kmod-pppoe kmod-pppox kmod-slhc kmod-usb-core kmod-usb-ehci kmod-usb-ledtrig-usbport kmod-usb-net kmod-usb-net-cdc-mbim kmod-usb-net-cdc-ncm kmod-usb-net-qmi-wwan kmod-usb-ohci kmod-usb-serial kmod-usb-serial-ftdi kmod-usb-serial-option kmod-usb-serial-wwan kmod-usb-wdm kmod-usb2 libattr libblobmsg-json libc libcurl4 libffi libgcc1 libip4tc2 libip6tc2 libiwinfo-lua libiwinfo20181126 libjson-c2 libjson-script liblua5.1.5 liblucihttp-lua liblucihttp0 libmbedtls12 libmbim libncurses6 libnl-tiny libopenssl1.1 libpthread libqmi librt libubox20191228 libubus-lua libubus20210603 libuci20130104 libuclient20160123 libusb-1.0-0 libxtables12 logd lua luci luci-app-firewall luci-app-opkg luci-base luci-compat luci-lib-ip luci-lib-jsonc luci-lib-nixio luci-mod-admin-full luci-mod-network luci-mod-status luci-mod-system luci-proto-ipv6 luci-proto-ppp luci-proto-qmi luci-theme-bootstrap mtd nano netifd odhcp6c odhcpd-ipv6only openssh-sftp-server openwrt-keyring opkg ppp ppp-mod-pppoe procd qmi-utils rpcd rpcd-mod-file rpcd-mod-iwinfo rpcd-mod-luci rpcd-mod-rrdns swconfig terminfo uboot-envtools ubox ubus ubusd uci uclient-fetch uhttpd umbim uqmi urandom-seed urngd usb-modeswitch usbutils usign wireless-regdb wpad-basic wwan zlib" \
FILES="files"

