<div align="center">
<a href="/LICENSE">
    <img src="https://img.shields.io/github/license/gngpp/NanoPi-R5C?style=flat&a=1" alt="">
  </a>
  </a><a href="https://github.com/gngpp/NanoPi-R5C/releases">
    <img src="https://img.shields.io/github/release/gngpp/NanoPi-R5C.svg?style=flat">
  </a><a href="hhttps://github.com/gngpp/NanoPi-R5C/releases">
    <img src="https://img.shields.io/github/downloads/gngpp/NanoPi-R5C/total?style=flat">
  </a>
</div>
<br>

# Actions-OpenWrt

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
- R4SE 默认网卡rtl8821cu driver
- R5C 默认m.2网卡mt7921 driver
- X86 默认AX201 driver

### 默认编译

- 用户名：root 密码：password  管理后台：http://openwrt.lan
- 下载地址： https://github.com/gngpp/NanoPi-R5C/releases
- 关于r5c刷机方法请参考dn2刷机 https://github.com/DHDAXCW/DoorNet-1-2/blob/mere/emmc.md
- rkbin下载 https://github.com/gngpp/NanoPi-R5C/raw/main/build/data/rk356x-MiniLoaderAll.bin
- 电报群：https://t.me/DHDAXCW

### 预览
<img src="./build/data/home.png"/>
<img src="./build/data/wifi.png"/>
<img src="./build/data/wireless_list.png"/>
