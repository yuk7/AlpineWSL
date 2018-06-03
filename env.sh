#!/bin/bash

ARCH="x86_64"
ROOTFS_VER="3.7"
ROOTFS_VER_R="0"
ROOTFS_FN="alpine-minirootfs-${ROOTFS_VER}.${ROOTFS_VER_R}-${ARCH}.tar.gz"
ROOTFS_URL="http://dl-cdn.alpinelinux.org/alpine/v${ROOTFS_VER}/releases/${ARCH}/${ROOTFS_FN}"

GLIBC_VER="2.27-r0"
GLIBC_FN="glibc-${GLIBC_VER}.apk"
GLIBC_URL="https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VER}/${GLIBC_FN}"

LNCR_BLD="18051900"
LNCR_ZIP="icons.zip"
LNCR_FN="Alpine.exe"
LNCR_URL="https://github.com/yuk7/WSL-DistroLauncher/releases/download/${LNCR_BLD}/${LNCR_ZIP}"


if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi


