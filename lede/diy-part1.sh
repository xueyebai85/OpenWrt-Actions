#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git openclash https://github.com/vernesong/OpenClash.git' >> 'feeds.conf.default'
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> 'feeds.conf.default'
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >> 'feeds.conf.default'
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' >> 'feeds.conf.default'
# echo 'src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' >>feeds.conf.default

# add a theme-argon
cd package/lean
rm -rf *argon*
git clone -b 18.06 https://github.com/xueyebai/luci-theme-argon.git
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git
