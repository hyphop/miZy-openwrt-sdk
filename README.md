# miZy-openwrt-sdk

build openwrt packages for miZy


## Get Source and Prepare

    mkdir /tmp/zero_builder
    cd /tmp/zero_builder
    
    git clone https://github.com/hyphop/miZy-openwrt-sdk.git
    
    cd miZy-openwrt-sdk
    
    ./openwrt.sdk.download
    ./openwrt.sdk.prepare
    ./openwrt.sdk.feeds

## buid

    ./openwrt.sdk.make


## Easy make - by one-line command

    wget http://raw.githubusercontent.com/hyphop/miZy-openwrt-sdk/master/make_it_easy -O- | sh -

## clean

    ./openwrt.sdk.clean

## output DIRs

    ./dl   - download src packages
    ./bin  - compiled packages

## custom feeds install

    ./openwrt/scripts/feeds install libgme

## custom package build

    ./openwrt.sdk.make package/libgme/configure
    ./openwrt.sdk.make package/libgme/install

## mizy-feeds

* busybox-mizy
* fluidsynth
* libgme
* libmodplug
* markdown
* html2text
* sunxi-tools
* vorbis-tools

## miZy 
 
miZy - open source minimalistic tiny fast embedded Linux system, (for sunxi Orange Pi Zero, another sunxi boards maybe work too )

## LINKS

- [https://hyphop.github.io/mizy/](https://hyphop.github.io/mizy/)
- [https://github.com/hyphop/miZy-linux-kernel](https://github.com/hyphop/miZy-linux-kernel)
- [https://github.com/hyphop/miZy-builder](https://github.com/hyphop/miZy-builder)
- [https://github.com/hyphop/miZy-uboot](https://github.com/hyphop/miZy-uboot)
