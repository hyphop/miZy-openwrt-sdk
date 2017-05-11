include $(TOPDIR)/rules.mk

PKG_NAME:=libmodplug
PKG_VERSION:=0.8.8.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/modplug-xmms/
PKG_MAINTAINER:=hyphop

PKG_FIXUP:=autoreconf
PKG_INSTALL:=1
PKG_REMOVE_FILES:=autogen.sh aclocal.m4
PKG_BUILD_PARALLEL:=1
#PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

TARGET_LDFLAGS+= \
	-Wl,-rpath-link=$(STAGING_DIR)/usr/lib

TARGET_CFLAGS += $(FPIC)

define Package/libmodplug
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=libmodplug
  URL:=https://sourceforge.net/projects/libmodplug/
  DEPENDS:=+libpthread +libstdcpp
#  DEPENDS:= @BROKEN
endef


#CONFIGURE_ARGS+= \
#    --disable-dbus-support \
#    --disable-pulse-support

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/
	$(CP) \
		$(PKG_INSTALL_DIR)/usr/include/libmodplug \
		$(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/lib*.{la,so*} \
		$(1)/usr/lib/
	$(INSTALL_DATA) \
		$(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libmodplug.pc \
		$(1)/usr/lib/pkgconfig/
endef


define Package/libmodplug/install
#	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/src/.libs/lib*.so.* $(1)/usr/lib/
#	$(CP) $(PKG_BUILD_DIR)/src/.libs/fluidsynth $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libmodplug))
