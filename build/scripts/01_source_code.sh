#!/bin/bash

if [ -n "$MODEL" ] && [ "$MODEL" == "r4se" ]; then 
    git clone https://github.com/DHDAXCW/lede-rockchip openwrt;
fi

if [ -n "$MODEL" ] && [ "$MODEL" == "r5c" ]; then 
    git clone https://github.com/DHDAXCW/lede-rockchip openwrt;
fi

if [ -n "$MODEL" ] && [ "$MODEL" == "x86" ]; then 
    git clone https://github.com/coolsnowwolf/lede openwrt;
fi

cd openwrt
rm -rf .git

OPENWRTROOT=$(pwd)
export OPENWRTROOT

mkdir customfeeds
git clone --depth=1 https://github.com/coolsnowwolf/packages customfeeds/packages
git clone --depth=1 https://github.com/coolsnowwolf/luci customfeeds/luci