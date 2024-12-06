#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part3.sh
# Description: OpenWrt DIY script part 3 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# up golang 1.23.x
rm -rf feeds/packages/lang/golang
git clone -b 23.x https://github.com/sbwml/packages_lang_golang feeds/packages/lang/golang

# cd feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/img
# sudo rm -rf bg1.jpg
# sudo wget https://github.com/xueyebai/OpenWrt-Actions/edit/main/lede/bg1.jpg
