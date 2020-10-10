#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能纯数字或者使用中文）
#sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-123'' package/lean/default-settings/files/zzz-default-settings

# 替换https-dns-proxy.init文件,解决用LEDE源码加入passwall编译固件后DNS转发127.0.0.1#5053和12.0.0.1#5054问题
#curl -fsSL  https://raw.githubusercontent.com/Lienol/openwrt-packages/19.07/net/https-dns-proxy/files/https-dns-proxy.init > feeds/packages/net/https-dns-proxy/files/https-dns-proxy.init

#全新的argon主题
#rm -rf ./package/lean/luci-theme-argon && git clone -b master https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
