#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# /helloworld
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' feeds.conf.default
sed -i '$a src-git packges https://github.com/Myoko/openwrt-packages.git' feeds.conf.default
#sed -i '$a src-git argon https://github.com/jerrykuku/luci-theme-argon.git' feeds.conf.default
#sed -i '$a src-git poweroffdevice https://github.com/sirpdboy/luci-app-poweroffdevice' feeds.conf.default

# ddnsto
#sed -i '$a src-git ddnsto https://github.com/linkease/nas-packages.git' feeds.conf.default

# sirpdboy packages
#sed -i '$a src-git sirpdboy https://github.com/sirpdboy/sirpdboy-package.git' feeds.conf.default

# poweroff
#sed -i '$a src-git poweroff https://github.com/esirplayground/luci-app-poweroff.git' feeds.conf.default

# custom kernel version
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
