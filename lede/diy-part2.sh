#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# up golang 1.22.0 
rm -rf feeds/packages/lang/golang
git clone -b 22.x https://github.com/sbwml/packages_lang_golang feeds/packages/lang/golang

# Modify default theme
sed -i 's/+luci-theme-bootstrap /  \\\n        +luci-theme-argon +luci-app-argon-config +luci-theme-argon-mod  \\\n        +luci-app-openclash +luci-app-passwall +luci-app-passwall2  \\\n        +luci-app-ddns +luci-app-smartdns +wget-nossl +luci-app-filetransfer  /g' feeds/luci/collections/luci/Makefile
#sed -i 's/+luci-app-samba4 //g' package/lean/autosamba/Makefile
