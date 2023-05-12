#!/bin/bash
ROOTDIR=$(pwd)
echo $ROOTDIR
if [ ! -e "$ROOTDIR/build" ]; then
    echo "Please run from root / no build dir"
    exit 1
fi

cd "$ROOTDIR/build"

cp -R openwrt-fresh-master openwrt

#freeze revision to SNAPSHOT from May 12, 2023
cd openwrt
git reset --hard d5182de637986a62bf654d75d6d8a8dc720b1f28

echo "Current OpenWRT commit"
git log -1
git describe

# fix packages for rrdtool1 not downloading in 22.03.4
#sed -i 's/38cb0129739bc71e0bb5a25ef1f6db70b7add04b/87c46fde91e743aea1704853a801e59a73ef47a2/' feeds.conf.default


# install feeds
# cd openwrt
# ./scripts/feeds update -a && ./scripts/feeds install -a

