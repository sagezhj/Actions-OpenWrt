#!/bin/bash

if [ -n "$MODE" ] && [ "$MODE" == "r4se" ]; then 
    git clone https://github.com/DHDAXCW/lede-rockchip openwrt;
fi

if [ -n "$MODE" ] && [ "$MODE" == "r5c" ]; then 
    git clone https://github.com/DHDAXCW/lede-rockchip openwrt;
fi

if [ -n "$MODE" ] && [ "$MODE" == "x86" ]; then 
    git clone https://github.com/coolsnowwolf/lede openwrt;
fi

cd openwrt
rm -rf .git

OPENWRTROOT=$(pwd)
export OPENWRTROOT

mkdir customfeeds
git clone --depth=1 https://github.com/coolsnowwolf/packages customfeeds/packages
git clone --depth=1 https://github.com/coolsnowwolf/luci customfeeds/luci