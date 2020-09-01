#!/bin/sh

getPackage() {
    suffix=""
    arch=$(uname -m)
    case $arch in
    "aarch64")
    suffix="-arm64"
    ;;
    esac
    case $arch in
    "armv6l" | "armv7l")
    suffix="-armhf"
    ;;
    esac
    case $arch in
    "x86_64")
    suffix="-x86_64"
    ;;
    esac
}

getPackage
echo ${suffix}