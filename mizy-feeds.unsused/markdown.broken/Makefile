include $(TOPDIR)/rules.mk

PKG_NAME:=markdown
PKG_VERSION:=0.1
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/linux-sunxi/sunxi-tools/archive/v1.4.tar.gz
PKG_MAINTAINER:=hyphop

PKG_SOURCE_PROTO:=git
PKG_REV:=2e3dee0070519bb8e98abc73c4d27162f57c41f6
PKG_SOURCE_URL:=https://github.com/MichaelHu/markdown.git
PKG_SOURCE_VERSION:=$(PKG_REV)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV).tar.gz
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

MAKE_PATH:=./src

define Package/markdown
    SECTION:=utils
    CATEGORY:=Utilities
    TITLE:=markdown c parser convert to html 
endef
#    DEPENDS:=+libc

MAKE_FLAGS += \
	INCLUDEFLAGS="$(TARGET_LDFLAGS)" \
	LINKFLAGS="$(TARGET_LDFLAGS)"

define Package/markdown/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/src/markdown.out $(1)/usr/bin/markdown
endef

$(eval $(call BuildPackage,markdown))
