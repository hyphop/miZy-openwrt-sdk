include $(TOPDIR)/rules.mk

PKG_NAME:=fluidsynth
PKG_VERSION:=1.1.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=@SF/fluidsynth
PKG_MAINTAINER:=hyphop

#PKG_FIXUP:=autoreconf
#PKG_REMOVE_FILES:=autogen.sh aclocal.m4
PKG_BUILD_PARALLEL:=1
#PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

TARGET_LDFLAGS+= \
	-Wl,-rpath-link=$(STAGING_DIR)/usr/lib

TARGET_CFLAGS += $(FPIC)

define Package/fluidsynth
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=fluidsynth
  URL:=https://sourceforge.net/projects/fluidsynth/
  DEPENDS:=+alsa-lib +libpthread +libsndfile +glib2 +libncurses +libreadline
#  DEPENDS:= @BROKEN
endef


CONFIGURE_ARGS+= \
    --disable-dbus-support \
    --disable-pulse-support

define Package/fluidsynth/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/src/.libs/lib*.so.* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/src/.libs/fluidsynth $(1)/usr/bin/
endef

$(eval $(call BuildPackage,fluidsynth))
