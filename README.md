# NanoPi-R5C
## 👉使用本固件前，请严格遵守国家互联网使用相关法律规定,不要违反国家法律规定！👈
- Docker版 含Docker插件，会导致udp转发失效 慎用哦，只要别开passwall的udp，啥都不影响使用！
### 支持在线升级，自动扩容根分区
- SSH进入终端
```
# 会保存配置备份
bash +x ~/update.sh

# 跳过备份
SKIP_BACK=1 bash +x ~/update.sh

# 默认走代理下载，如不需要代理下载固件，执行下面命令
USE_PROXY=false bash +x ~/update.sh

# 默认使用ghproxy.com代理，自定义代理执行下面命令
PROXY=gh.flyinbug.top/gh bash +x ~/update.sh
```

# 默认加了m.2网卡mt7921

### 源代码地址
- lede https://github.com/DHDAXCW/lede-rockchip
- Luci https://github.com/DHDAXCW/luci
- packages https://github.com/DHDAXCW/packages

### 默认编译

- 用户名：root 密码：password  管理IP：10.0.2.1
- 下载地址： https://github.com/gngpp/NanoPi-R5S/releases
- 关于r5c刷机方法请参考dn2刷机 https://github.com/DHDAXCW/DoorNet-1-2/blob/mere/emmc.md
- rkbin下载 https://github.com/DHDAXCW/NanoPi-R5S-R5C/raw/main/data/rk356x-MiniLoaderAll.bin
- Docker：正式版带docker，有超频，带有docker插件。（对passwall的udp要求很高，不要刷docker版本）
- 电报群：https://t.me/DHDAXCW
- X86固件 ：[点击链接下载](https://github.com/gngpp/OpenWRT_x86_x64/releases)

# [赏个鸡腿吧](https://afdian.net/@dhdaxcw/plan)
### https://afdian.net/@dhdaxcw/plan

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
