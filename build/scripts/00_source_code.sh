#!/bin/bash

IMAGE="ghcr.io/gngpp/openwrt-build-cache:"
if [ -n "$MODEL" ] && [ "$MODEL" == "r4se" ]; then 
    IMAGE=$IMAGE:$MODEL_$VERSION
    git clone https://github.com/DHDAXCW/lede-rockchip openwrt;
fi

if [ -n "$MODEL" ] && [ "$MODEL" == "r5c" ]; then 
    IMAGE=$IMAGE:$MODEL_$VERSION
    git clone https://github.com/DHDAXCW/lede-rockchip openwrt;
fi

if [ -n "$MODEL" ] && [ "$MODEL" == "x86" ]; then 
    IMAGE=$IMAGE:$MODEL_$VERSION
    git clone https://github.com/coolsnowwolf/lede openwrt;
fi

export IMAGE

cd openwrt
rm -rf .git

OPENWRTROOT=$(pwd)
export OPENWRTROOT

mkdir customfeeds
git clone --depth=1 https://github.com/coolsnowwolf/packages customfeeds/packages
git clone --depth=1 https://github.com/coolsnowwolf/luci customfeeds/luci