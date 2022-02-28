#!/usr/bin/env bash

OPENWRT_PATH=openwrt
OPENWRT_TAG=v19.07.8
APP="openhub6"

while getopts 'p:h' OPTION
do
	case $OPTION in
	p)	OPENWRT_PATH="$OPTARG"
		;;
	h|?)	printf "Set Up OpenWrt OpenHUB6 build environment for Safe platform. \n\n"
		printf "Usage: %s [-p <openwrt_source>]\n" $(basename $0) >&2
		printf "	-p: openwrt build path, default: $OPENWRT_PATH\n\n"
		exit 1
		;;
	esac
done

shift $(($OPTIND - 1))

REPO_PATH=$(pwd)

if [ ! -d $OPENWRT_PATH ]; then
echo "Fetch openwrt..."
git clone https://github.com/openwrt/openwrt.git $OPENWRT_PATH
pushd $OPENWRT_PATH 

echo "Switch tag to $OPENWRT_TAG..."
git checkout $OPENWRT_TAG
git apply ../patch.openhub6
popd
fi

echo "Add OpenHub6 feed..."
cp feeds.$APP $OPENWRT_PATH/feeds.conf.default

echo "Install feeds.."
$OPENWRT_PATH/scripts/feeds update
$OPENWRT_PATH/scripts/feeds install -a

echo "Copy config.$APP to $OPENWRT_PATH/.config..."
cp config.$APP $OPENWRT_PATH/.config

if [ -d $OPENWRT_PATH/tmp ]; then
    echo "Cleaning..."
    rm -rf $OPENWRT_PATH/tmp
fi

# Patch packages
cp ../openhub6/patches/base-files/banner $OPENWRT_PATH/package/base-files/files/etc/.
cp ../openhub6/patches/dnsmasq/dhcp.conf $OPENWRT_PATH/package/network/services/dnsmasq/files/.

echo "Setup done, run ./openwrt_build.sh -p $OPENWRT_PATH"
