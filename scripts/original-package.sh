#!/bin/bash
# 1 fullin, 2 only a little included

fullin=0
little=0

if [ "${1}" == "1" ];then
fullin=1
elif [ "${1}" == "2" ];then
little=1
fi

cp -f ./resources/zh_Hans/base.po friendlywrt-rk3328/friendlywrt/feeds/luci/modules/luci-base/po/zh_Hans/base.po || echo ""

git clone -b master --single-branch https://github.com/Lienol/openwrt-package.git

# patch feeds、package
cd friendlywrt-rk3328/friendlywrt
# luci-lib-jsonc patch
git apply ../../patches/use_json_object_new_int64.patch
# luci-status
git apply ../../patches/patch-feeds-luci-status-overiew.patch
# add nas menu
if [ -e "feeds/luci/modules/luci-base/root/usr/share/luci/menu.d/luci-base.json" ]; then
    git apply ../../patches/19-07-3-luci-base-json-add-nas-menu-order-44.patch
else
    git apply ../../patches/19-07-1-lua-add-nas-first-menu-order-44.patch
fi
#patch nas sw
sh ../../scripts/patch_for_nas_software.sh
cd ../../

leanpack="friendlywrt-rk3328/friendlywrt/package/lean"
lienolpack="friendlywrt-rk3328/friendlywrt/package/lienol"
ctcgfwpack="friendlywrt-rk3328/friendlywrt/package/ctcgfw"
themepack="friendlywrt-rk3328/friendlywrt/feeds/luci/themes"

mkdir -p $leanpack
mkdir -p $themepack

#get theme
#rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-theme-argon/ >/dev/null 2>&1 || echo ""
#cp -rf openwrt/package/ctcgfw/luci-theme-argon $themepack

rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-theme-bootstrap-mod/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lienol/luci-theme-bootstrap-mod $themepack

#get luci-app-accesscontrol
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-accesscontrol/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-accesscontrol/ $leanpack

# get adbyby
rm -rf friendlywrt-rk3328/friendlywrt/feeds/package/*/adbyby/ >/dev/null 2>&1 || echo ""
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-adbyby-plus/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/adbyby/ $leanpack
cp -rf openwrt/package/lean/luci-app-adbyby-plus/ $leanpack

#get luci-app-arpbind
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-arpbind/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-arpbind/ $leanpack

#get luci-app-ramfree
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-ramfree/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-ramfree/ $leanpack

#get luci-app-vlmcsd
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-vlmcsd/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/vlmcsd/ $leanpack
cp -rf openwrt/package/lean/luci-app-vlmcsd/ $leanpack

#get luci-lib-fs
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-lib-fs/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-lib-fs/ $leanpack

#get luci-app-filetransfer
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-filetransfer/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-filetransfer/ $leanpack

#get luci-app-zerotier
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-zerotier/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-zerotier/ $leanpack

#get kcptun
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/kcptun/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/kcptun/ $leanpack

##### big ####
if [ "$fullin" = "1" ]; then

#get luci-app-syncdial
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-syncdial/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-syncdial/ $leanpack

#get fullconenat
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/openwrt-fullconenat/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/openwrt-fullconenat/ $leanpack

#get ddns-scripts_aliyun/dnspod
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/ddns-scripts_aliyun/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/ddns-scripts_aliyun/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/ddns-scripts_dnspod/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/ddns-scripts_dnspod/ $leanpack

#get luci-app-mwan3helper
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-mwan3helper/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-mwan3helper/ $leanpack

# get qbittorrent
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/qbittorrent*/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/qBittorrent-Enhanced-Edition/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/libtorrent-rasterbar/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/libtorrent-rasterbar/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-qbittorrent/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-qbittorrent/ $leanpack

# get qt5
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/qt5/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/qt5/ $leanpack

# get unblockmusic
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-unblockmusic/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-unblockmusic/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/UnblockNeteaseMusic-Go/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/UnblockNeteaseMusic-Go/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/UnblockNeteaseMusic/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/UnblockNeteaseMusic/ $leanpack

# get luci-app-flowoffload
#rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-flowoffload/ >/dev/null 2>&1 || echo ""
#cp -rf openwrt/package/lean/luci-app-flowoffload/ $leanpack

#get luci-app-vssr
git clone -b master --single-branch https://github.com/jerrykuku/lua-maxminddb.git  $leanpack/lua-maxminddb
git clone -b master --single-branch https://github.com/jerrykuku/luci-app-vssr.git  $leanpack/luci-app-vssr
# big
fi

#### little or big ####
if [ "$little" = "1" -o "$fullin" = "1" ]; then
# get luci-app-ssrserver-python
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/luci-app-ssrserver-python/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/luci-app-ssrserver-python/ $leanpack

#get ssr
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/shadowsocksr-libev/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/shadowsocksr-libev/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/srelay/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/srelay/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/microsocks/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/microsocks/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/proxychains-ng/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/proxychains-ng/ $leanpack
rm -rf friendlywrt-rk3328/friendlywrt/feeds/*/*/tcpping/ >/dev/null 2>&1 || echo ""
cp -rf openwrt/package/lean/tcpping/ $leanpack
git clone -b master --single-branch https://github.com/aa65535/openwrt-simple-obfs  $leanpack/simple-obfs
git clone -b master --single-branch https://github.com/kongfl888/redsocks2.git $leanpack/redsocks2
# little or big
fi

#autocore
cd openwrt
git apply ../patches/enable_autocore_1907.patch
cd ..
cp -rf openwrt/package/lean/autocore/ $leanpack
cp -rf openwrt/package/lean/coremark $leanpack 
sed -i 's,-DMULTIT,-Ofast -DMULTIT,g' $leanpack/coremark/Makefile
