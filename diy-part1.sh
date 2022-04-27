
#添加源
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default                                     #ssr-plus
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default                                  #kenzok8软件库
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default                                             #kenzok8软件库依赖
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default                           #易有云 luci-app-ddnsto和luci-app-linkease
patch -p1 < add-patch_dts_file-wifi-xradio.patch

git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff                       #关机
git clone https://github.com/DevOpenWRT-Router/luci-app-rebootschedule.git package/lean/luci-app-rebootschedule        #多功能定时任务
git clone https://github.com/mitsukileung/luci-app-filebrowser.git package/lean/luci-app-filebrowser                   #文件管理
git clone https://github.com/small-5/luci-app-adblock-plus.git package/lean/luci-app-adblock-plus                      #需取消勾选base-system->dnsmasq

