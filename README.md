# NanoPi-R5C
## 👉使用本固件前，请严格遵守国家互联网使用相关法律规定,不要违反国家法律规定！👈

### 支持在线升级，自动扩容根分区
> 若非扩容升级则去掉参数EXPAND
- SSH进入终端
```
# 会保存配置备份
EXPAND=true bash +x ~/update.sh

# 跳过备份
EXPAND=true SKIP_BACK=1 bash +x ~/update.sh

# 默认走代理下载，如不需要代理下载固件，执行下面命令
EXPAND=true USE_PROXY=false bash +x ~/update.sh

# 默认使用gh.flyinbug.top/gh代理，自定义代理执行下面命令
EXPAND=true PROXY=gh.flyinbug.top/gh bash +x ~/update.sh
```
> 默认加m.2网卡mt7921/ax200 driver

### 默认编译

- 用户名：root 密码：password  管理IP：10.0.2.1
- 下载地址： https://github.com/gngpp/NanoPi-R5C/releases
- 关于r5c刷机方法请参考dn2刷机 https://github.com/DHDAXCW/DoorNet-1-2/blob/mere/emmc.md
- rkbin下载 https://github.com/gngpp/NanoPi-R5C/raw/main/build/data/rk356x-MiniLoaderAll.bin
- Docker：正式版带docker，有超频，带有docker插件。（对passwall的udp要求很高，不要刷docker版本）
- 电报群：https://t.me/DHDAXCW

### 预览
<img src="./build/data/home.png"/>
<img src="./build/data/wifi.png"/>
<img src="./build/data/wireless_list.png"/>

## 鸣谢

特别感谢以下项目：

Openwrt 官方项目：

<https://github.com/openwrt/openwrt>

Lean 大的 Openwrt 项目：

<https://github.com/coolsnowwolf/lede>

immortalwrt 的 OpenWrt 项目：

<https://github.com/immortalwrt/immortalwrt>

P3TERX 大佬的 Actions-OpenWrt 项目：

<https://github.com/P3TERX/Actions-OpenWrt>

SuLingGG 大佬的 Actions 编译框架 项目：

https://github.com/SuLingGG/OpenWrt-Rpi
