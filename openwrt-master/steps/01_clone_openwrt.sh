#!/bin/bash
ROOTDIR=$(pwd)
echo $ROOTDIR
if [ ! -e "$ROOTDIR/LICENSE" ]; then
    echo "Please run from root"
    exit 1
fi

## Create build catalogue and switch to it
cd $ROOTDIR
mkdir build
cd build

## Clone specific OpenWRT branch: master into fresh empty folder
OPENWRT_FOLDER=openwrt-fresh-master
git clone -b master --single-branch https://git.openwrt.org/openwrt/openwrt.git $OPENWRT_FOLDER
cd $OPENWRT_FOLDER

## Display current commit clone 
echo "Current OpenWRT commit"
git log -1

## Use when need to go to specific OpenWrt release/tag and lock to that version
# git go to specific tag if needed
# OPENWRT_TAG=2ce89a35788fcd768a4a872d3d4f5a3a131b1d43
# git reset --hard $OPENWRT_TAG

# note how to freeze feeds too if needed
# see https://github.com/openwrt/openwrt/commit/1d5aa4bde731905073dbfb96d9dfb9b480715505
