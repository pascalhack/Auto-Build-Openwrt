#!/bin/bash
# Modify default IP
#sed -i 's/192.168.1.1/192.168.0.100/g' package/base-files/files/bin/config_generate

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/xiaorouji/openwrt-package' feeds.conf.default
#sed -i '$a src-git ipro https://github.com/tuanqing/install-program' feeds.conf.default
#sed -i '$a src-git maxminddb https://github.com/jerrykuku/lua-maxminddb' feeds.conf.default
#sed -i '$a src-git vssr https://github.com/jerrykuku/luci-app-vssr' feeds.conf.default
