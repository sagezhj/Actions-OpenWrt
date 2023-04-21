#!/bin/bash

: ${MODEL:=r4se}
: ${KMODS_IN_FIRMWARE:=false}
: ${VERSION:=docker}

export MODEL
export VERSION
export KMODS_IN_FIRMWARE

arr=("r4s" "r4se" "r5c" "x86-64")
if echo ${arr[@]} | grep -q "$MODEL"; then
    echo "Start compiling for the device: $MODEL"
else
    exit 0
fi

chmod +x build/scripts/*.sh

echo "[---------------------------------------------01_source_code---------------------------------------------]"
source ./build/scripts/01_source_code.sh

echo "[---------------------------------------------02_feeds_setting---------------------------------------------]"
source ./build/scripts/02_feeds_setting.sh

echo "[---------------------------------------------03_feeds_update---------------------------------------------]"
source ./build/scripts/03_feeds_update.sh

echo "[---------------------------------------------04_community_package---------------------------------------------]"
source ./build/scripts/04_community_package.sh

echo "[---------------------------------------------05_target_setting---------------------------------------------]"
source ./build/scripts/05_target_setting.sh

echo "[---------------------------------------------06_download_dl---------------------------------------------]"
source ./build/scripts/06_download_dl.sh

echo "[---------------------------------------------07_compile_toolchain---------------------------------------------]"
source ./build/scripts/07_compile_toolchain.sh

echo "[---------------------------------------------08_compile_package---------------------------------------------]"
source ./build/scripts/08_compile_package

echo "[---------------------------------------------09_generate_firmware---------------------------------------------]"
source ./build/scripts/09_generate_firmware.sh
