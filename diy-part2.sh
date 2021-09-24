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
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

# 插件库
git clone https://github.com/kenzok8/openwrt-packages.git
git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
git clone https://github.com/vernesong/OpenClash package/luci-app-openclash
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash

