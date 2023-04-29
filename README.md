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

- R4SE 默认网卡rtl8821cu driver + GPU （对超频电压微调过，特别适合体制垃圾的RK3399，暂时不存在跑大带宽/pcdn重启/死机之类）
- R5C 默认m.2网卡mt7921 driver + GPU + tty console
- x86-64 默认AX201 driver

### 编译依赖（非自托管请不要fork我的项目）

```shell
sudo apt update -y
sudo apt install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib \
git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libglib2.0-dev libgmp3-dev libltdl-dev vpnc \
libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libreadline-dev libssl-dev libtool lrzsz aria2 lib32gcc-s1 \
mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pip libpython3-dev qemu-utils \
rsync scons squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev libfuse-dev zstd npm

curl -fsSL https://test.docker.com -o test-docker.sh
sudo sh test-docker.sh
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
newgrp - docker
```

- 本地编译

```shell
git clone https://github.com/gngpp/Actions-OpenWrt && cd Actions-OpenWrt
MODEL=x86-64 bash +x build.sh
```

### 默认编译配置

- 用户名：root 密码：password  管理后台：http://openwrt.lan
- rkbin下载 https://github.com/gngpp/NanoPi-R5C/raw/main/build/data/rk356x-MiniLoaderAll.bin
- 电报群：https://t.me/DHDAXCW

### 插件预览
![image](https://user-images.githubusercontent.com/51810656/232373515-9ee2b8b4-19de-4723-89e8-66b8b51f5d7f.png)
![image](https://user-images.githubusercontent.com/51810656/232373585-5fc59ffe-1636-499a-9edd-d84e65b6e35e.png)
