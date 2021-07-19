#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Lienol/openwrt-package
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git helloworld helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git poweroffdevice https://github.com/sirpdboy/luci-app-poweroffdevice' >>feeds.conf.default
echo 'src-git theme https://github.com/sirpdboy/luci-theme-opentopd' >>feeds.conf.default

# AdGuard home
#sed -i '$a src-git diy https://github.com/rufengsuixing/luci-app-adguardhome.git' feeds.conf.default

# poweroff
#sed -i '$a src-git poweroff https://github.com/esirplayground/luci-app-poweroff.git' feeds.conf.default

# custom kernel version
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
