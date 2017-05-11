include $(TOPDIR)/rules.mk

PKG_NAME:=sunxi-tools
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/linux-sunxi/sunxi-tools/archive/v1.4.tar.gz
PKG_MAINTAINER:=hyphop

#PKG_REV:=spiflash-a20-test
PKG_REV:=7128c73abf88eef9332ce7a9cb11704f35ad516c
PKG_SOURCE_PROTO:=git
#PKG_SOURCE_URL:=https://github.com/ssvb/sunxi-tools.git
PKG_SOURCE_URL:=https://github.com/linux-sunxi/sunxi-tools.git
PKG_SOURCE_VERSION:=$(PKG_REV)
#PKG_SOURCE_VERSION:=1.4.0
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV).tar.gz
#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/sunxi-tools
    SECTION:=utils
    CATEGORY:=Utilities
    TITLE:=sunxi-tools
    DEPENDS:=+libpthread +libusb-1.0
endef

define Package/sunxi-tools/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/sunxi-fexc $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/sunxi-fel $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/bin2fex $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/fex2bin $(1)/usr/bin
endef

$(eval $(call BuildPackage,sunxi-tools))
