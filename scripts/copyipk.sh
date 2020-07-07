# [K] (C)2020
# https://github.com/kongfl888/OpenWrt4R2S

mkdir -p ./r2srom/ipk/

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*adbyby*.ipk" | grep "adbyby" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*adbyby*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack adbyby ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*adguardhome*.ipk" | grep "adguardhome" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*adguardhome*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack adguardhome ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*iptvhelper*.ipk" | grep "iptvhelper" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*iptvhelper*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack iptvhelper ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*mwan3*.ipk" | grep "mwan3" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*mwan3*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack mwan3 ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*syncdial*.ipk" | grep "syncdial" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*syncdial*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack syncdial ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/targets/* -name "kmod-macvlan*.ipk" | grep "kmod-macvlan" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/targets/*/generic/packages/kmod-macvlan*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack kmod-macvlan ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*luci-app-r2sflasher*.ipk" | grep "r2sflasher" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*r2sflasher*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack r2sflasher ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*luci-app-autorewan*.ipk" | grep "autorewan" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*autorewan*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack autorewan ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "luci-app-timedreboot*.ipk" | grep "luci-app-timedreboot" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/luci-app-timedreboot*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack luci-app-timedreboot ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*smartdns*.ipk" | grep "smartdns" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*smartdns*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack smartdns ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*koolproxyR*.ipk" | grep "koolproxyR" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*koolproxyR*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack koolproxyR ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*sqm*.ipk" | grep "sqm" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*sqm*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack sqm ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "luci-theme-*.ipk" | grep "luci-theme" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/luci-theme-*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack luci-theme ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "shadowsocksr*.ipk" | grep "shadowsocksr" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/shadowsocksr*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack shadowsocksr ipk fail" >> ipklost.txt
fi
if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "srelay*.ipk" | grep "srelay" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/srelay*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack srelay ipk fail" >> ipklost.txt
fi
if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "microsocks*.ipk" | grep "microsocks" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/microsocks*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack microsocks ipk fail" >> ipklost.txt
fi
if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "proxychains-ng*.ipk" | grep "proxychains-ng" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/proxychains-ng*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack proxychains-ng ipk fail" >> ipklost.txt
fi
if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "tcpping*.ipk" | grep "tcpping" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/tcpping*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack tcpping ipk fail" >> ipklost.txt
fi
if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "simple-obfs*.ipk" | grep "simple-obfs" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/simple-obfs*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack simple-obfs ipk fail" >> ipklost.txt
fi
if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "redsocks2*.ipk" | grep "redsocks2" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/redsocks2*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack redsocks2 ipk fail" >> ipklost.txt
fi
if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "kcptun*.ipk" | grep "kcptun" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/kcptun*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack kcptun ipk fail" >> ipklost.txt
fi
if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*ssr*.ipk" | grep "ssr" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*ssr*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack ssr ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*accesscontrol*.ipk" | grep "accesscontrol" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*accesscontrol*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack accesscontrol ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*wifi*.ipk" | grep "wifi" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*wifi*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack wifi ipk fail" >> ipklost.txt
fi

if [ `find friendlywrt-rk3328/friendlywrt/bin/packages/* -name "*ttyd*.ipk" | grep "ttyd" -c` -gt 0 ]; then
	mv -f friendlywrt-rk3328/friendlywrt/bin/packages/*/*/*ttyd*.ipk ./r2srom/ipk/ >/dev/null 2>&1 || echo "pack ttyd ipk fail" >> ipklost.txt
fi

if [ `find ./r2srom/ipk/* -name "*.ipk" | grep ".ipk" -c` -eq 0 ]; then
    echo "1" > ./r2srom/ipk/noipk
fi

if [ -e ".current_config.mk" ]; then
    cp -f .current_config.mk ./r2srom/
fi
