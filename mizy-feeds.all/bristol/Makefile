include $(TOPDIR)/rules.mk

PKG_NAME:=bristol
PKG_VERSION:=0.60.11
PKG_RELEASE:=

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/bristol
PKG_SOURCE_URL:=https://downloads.sourceforge.net/project/bristol/bristol/0.60/
PKG_MAINTAINER:=hyphop

#PKG_FIXUP:=autoreconf
#PKG_REMOVE_FILES:=autogen.sh aclocal.m4
PKG_BUILD_PARALLEL:=1
#PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

TARGET_LDFLAGS+= \
	-Wl,-rpath-link=$(STAGING_DIR)/usr/lib

TARGET_CFLAGS += $(FPIC)

define Package/bristol
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=bristol
  URL:=https://sourceforge.net/projects/bristol/
  DEPENDS:=+alsa-lib +libpthread +libsndfile +glib2 +libncurses +libreadline
#  DEPENDS:= @BROKEN
endef


CONFIGURE_ARGS+= \
    --disable-dbus-support \
    --disable-pulse-support

define Package/bristol/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/lib
#	$(CP) $(PKG_BUILD_DIR)/src/.libs/lib*.so.* $(1)/usr/lib/
#	$(CP) $(PKG_BUILD_DIR)/src/.libs/fluidsynth $(1)/usr/bin/
endef

$(eval $(call BuildPackage,bristol))
