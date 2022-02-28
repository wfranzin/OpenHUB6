#!/usr/bin/env bash
#Build OpenHub6 Image for Hub6 Safe board (Dragino based)

SFLAG=
AFLAG=
BFLAG=

APP="openhub6"
REPO_PATH=$(pwd)
VERSION="rc1"
OPENWRT_PATH="openwrt"
IMAGE_PATH=$REPO_PATH/../firmware-images
OPENHUB6_PACKAGE_PATH=$REPO_PATH/../openhub6

while getopts 'o:p:sh' OPTION
do
	case $OPTION in
	p)	OPENWRT_PATH="$OPTARG"
		;;

	s)	SFLAG=1
		;;

	o)	IMAGE_PATH="$OPTARG"
		;;

	h|?)	printf "Build Image for OpenHub6\n\n"
		printf "Usage: %s [-p <openwrt source path>] [-o <image output path>] [-s] \n" $(basename $0) >&2
		printf "	-o: image output path, default: barrier_breaker\n"
		printf "	-p: openwrt source path, default: barrier_breaker\n"
		printf "	-s: build in single thread (to help fix compile issues)\n"
		printf "\n"
		exit 1
		;;
	esac
done

shift $(($OPTIND - 1))

BUILD=$APP-$VERSION
BUILD_TIME="`date`"
ARCH=ar71xx
TARGET_PATH="bin/targets/$ARCH/generic"

echo ""
echo "Remove custom files from last build.."
rm -rf $OPENWRT_PATH/files

cd $OPENWRT_PATH

# Rebuild Luci app at each build
rm -rf build_dir/target-mips_24kc_musl/luci-app-*

echo ""

echo ""
echo "Update build version and build date..."
echo "Build: $BUILD"
echo "Build Time: $BUILD_TIME"
echo ""

rm -rf ./$TARGET_PATH/*

echo ""
if [ ! -z $SFLAG ];then
	echo "Run make in single thread..."
	make V=s
else
	echo "Run make..."
	make -j8 V=99
fi

if [ ! -f $TARGET_PATH/$APP-$VERSION-$ARCH-generic-$APP-squashfs-sysupgrade.bin ];then
	echo ""
	echo "Build Fails, use below commands to fix compile issues..."
	echo "	./openwrt_build.sh -s V=99"
	echo "Could not find $APP-$VERSION-$ARCH-generic-$APP-squashfs-sysupgrade.bin in $TARGET_PATH"
	ls -la $TARGET_PATH
	exit 0
fi

DATE=`date +%Y%m%d`
mkdir -p $IMAGE_PATH

echo ""
echo "Move files to $IMAGE_PATH..."
cp ./$TARGET_PATH/*-squashfs-sysupgrade.bin $IMAGE_PATH/${APP^^}-$VERSION-$DATE.bin

if [ -f openwrt_tftp.sh ];then
./openwrt_tftp.sh $IMAGE_PATH/${APP^^}-$VERSION-$DATE.bin
fi

cd $REPO_PATH

echo ""
echo "OpenHub6 build done, The image can be found at $IMAGE_PATH"
echo ""
