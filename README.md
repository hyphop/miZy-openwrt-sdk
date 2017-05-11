# miZy-openwrt-sdk

    build openwrt packages for miZy

## get & prepare

    ./openwrt.sdk.download
    ./openwrt.sdk.prepare
    ./openwrt.sdk.feeds

## install feeds

    ./openwrt/scripts/feeds install libgme

## buid

    ./openwrt.sdk.make

## output DIRs

    ./dl   - download src packages
    ./bin  - compiled packages

## custom package build

    ./openwrt.sdk.make package/libgme/configure
    ./openwrt.sdk.make package/libgme/install


## mizy-feeds

* busybox-mizy
* fluidsynth
* html2text
* libgme
* libmodplug
* markdown
* markdown.broken
* sunxi-tools
* vorbis-tools

## miZy 
 
miZy - open source minimalistic tiny fast embedded Linux system, (for sunxi Orange Pi Zero, another sunxi boards maybe work too )

## LINKS

- [https://hyphop.github.io/mizy/](https://hyphop.github.io/mizy/)
- [https://github.com/hyphop/miZy-linux-kernel](https://github.com/hyphop/miZy-linux-kernel)
- [https://github.com/hyphop/miZy-builder](https://github.com/hyphop/miZy-builder)
- [https://github.com/hyphop/miZy-uboot](https://github.com/hyphop/miZy-uboot)
