include $(TOPDIR)/rules.mk

PKG_NAME_ORG:=game-music-emu
PKG_NAME:=libgme
PKG_VERSION:=0.6.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME_ORG)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_DIR:=$(PKG_NAME_ORG)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://bitbucket.org/mpyne/game-music-emu/downloads/
PKG_MAINTAINER:=hyphop

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME_ORG)-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/$(PKG_NAME_ORG)-$(PKG_VERSION)

PKG_FIXUP:=autoreconf
PKG_INSTALL:=1
#PKG_REMOVE_FILES:=autogen.sh aclocal.m4
PKG_BUILD_PARALLEL:=1
#PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

#TARGET_LDFLAGS+= \
#	-Wl,-rpath-link=$(STAGING_DIR)/usr/lib
#
#TARGET_CFLAGS += $(FPIC)

define Package/libgme
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=libgme
#  URL:=https://sourceforge.net/projects/libgme/
  URL:=https://bitbucket.org/mpyne/game-music-emu/
  DEPENDS:=+libpthread +libstdcpp
#  DEPENDS:= @BROKEN
endef

#TARGET_LDFLAGS+= \
#    -Wl,-rpath-link=$(STAGING_DIR)/usr/lib

#CONFIGURE_ARGS+= \
#    --disable-rpath
#    --disable-dbus-support \
#    --disable-pulse-support

#CMAKE_OPTIONS:= -DBUILD_TESTS=0 -DBUILD_EXAMPLES=0
#CMAKE_OPTIONS+= -DHAVE_WORDS_BIGENDIAN_EXITCODE=$(if $(CONFIG_BIG_ENDIAN),0,1)

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/
	$(CP) \
		$(PKG_INSTALL_DIR)/usr/include/gme \
		$(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/lib*.so* \
		$(1)/usr/lib/
	$(INSTALL_DATA) \
		$(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libgme.pc \
		$(1)/usr/lib/pkgconfig/
endef


define Package/libgme/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/gme/lib*.so.* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/demo/demo $(1)/usr/bin/gme2raw
endef

$(eval $(call BuildPackage,libgme))
