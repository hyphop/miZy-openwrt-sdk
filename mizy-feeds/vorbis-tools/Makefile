include $(TOPDIR)/rules.mk

PKG_NAME:=vorbis-tools
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://downloads.xiph.org/releases/vorbis
PKG_MAINTAINER:=hyphop

#PKG_FIXUP:=autoreconf
#PKG_REMOVE_FILES:=autogen.sh aclocal.m4
#PKG_BUILD_PARALLEL:=1
#PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

#TARGET_LDFLAGS+= \
#	-Wl,-rpath-link=$(STAGING_DIR)/usr/lib

#TARGET_CFLAGS += $(FPIC)

define Package/vorbis-tools
    SECTION:=libs
    CATEGORY:=Libraries
    TITLE:=libvorbis
    URL:=http://xiph.org/vorbis/
    DEPENDS:=+libogg +libpthread +libvorbis
endef


CONFIGURE_ARGS+= \
    --disable-nls \

#	$(CP) $(PKG_BUILD_DIR)/ogg123/ogg123 $(1)/usr/bin
define Package/vorbis-tools/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/oggdec/oggdec $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/oggenc/oggenc $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/ogginfo/ogginfo $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/vorbiscomment/vorbiscomment $(1)/usr/bin
endef

$(eval $(call BuildPackage,vorbis-tools))
