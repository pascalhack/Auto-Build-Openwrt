#!/bin/bash
sed -i 's/192.168.1.1/192.168.0.100/g' package/base-files/files/bin/config_generate
sed -i 's|root::0:0:99999:7:::|root:$1$N04B/OY7$UvsOwY6eDGO5z8bq0OFFS/:18586:0:99999:7:::|g'   package/base-files/files/etc/shadow

sed -i '33d'   package/lean/default-settings/files/zzz-default-settings
sed -i '34i\'   package/lean/default-settings/files/zzz-default-settings

sed -i '41i\echo "#iptables -t nat -I POSTROUTING -j MASQUERADE" >> /etc/firewall.user' package/lean/default-settings/files/zzz-default-settings
sed -i '42i\echo "iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE" >> /etc/firewall.user' package/lean/default-settings/files/zzz-default-settings

sed -i '4i\msgid "Hello World"'   package/lintelstm/lienol/luci-app-vssr/po/zh-cn/vssr.po
sed -i '5i\msgstr "科学上网增强版"\n'   package/lintelstm/lienol/luci-app-vssr/po/zh-cn/vssr.po
sed -i '4i\msgid "ShadowSocksR Plus+"'   package/lintelstm/lienol/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
sed -i '5i\msgstr "科学上网经典版"\n'   package/lintelstm/lienol/luci-app-ssr-plus/po/zh-cn/ssr-plus.po
sed -i 's/PassWall/科学上网专业版/g' package/lintelstm/lienol/luci-app-passwall/po/zh-cn/passwall.po

sed -i 's/("ShadowSocksR Plus+"), 10/("ShadowSocksR Plus+"), 1/g' package/lintelstm/lienol/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
sed -i 's/, 0/, 2/g' package/lintelstm/lienol/luci-app-vssr/luasrc/controller/vssr.lua
sed -i 's/("Pass Wall"), 1/("Pass Wall"), 3/g' package/lintelstm/lienol/luci-app-passwall/luasrc/controller/passwall.lua
sed -i 's/("Clash"), 1/("Clash"), 4/g'  package/lintelstm/lienol/luci-app-clash/luasrc/controller/clash.lua
sed -i 's/("ADBYBY Plus +"), 9/("ADBYBY Plus +"), 0/g'  package/lean/luci-app-adbyby-plus/luasrc/controller/adbyby.lua
sed -i 's/services/vpn/g'  package/lintelstm/obsolete/luci-app-v2ray-server/luasrc/controller/v2ray_server.lua
