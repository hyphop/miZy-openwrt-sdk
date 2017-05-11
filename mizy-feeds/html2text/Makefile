include $(TOPDIR)/rules.mk

PKG_NAME:=html2text
PKG_VERSION:=0.1
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/linux-sunxi/sunxi-tools/archive/v1.4.tar.gz
PKG_MAINTAINER:=hyphop

PKG_REV:=553343bc9bc598930dc7c397214275f8ba6bbe00
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/rec/html2text.git
PKG_SOURCE_VERSION:=$(PKG_REV)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV).tar.gz
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

#MAKE_PATH:=./src

define Package/html2text
    SECTION:=utils
    CATEGORY:=Utilities
    TITLE:=html2text 
    DEPENDS:=+libstdcpp
endef

#MAKE_FLAGS += \
#	INCLUDEFLAGS="$(TARGET_LDFLAGS)" \
#	LINKFLAGS="$(TARGET_LDFLAGS)"

define Package/html2text/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/html2text $(1)/usr/bin/html2text
endef

$(eval $(call BuildPackage,html2text))
