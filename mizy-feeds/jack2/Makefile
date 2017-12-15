include $(TOPDIR)/rules.mk

PKG_NAME:=jack2
PKG_VERSION:=v1.9.10
PKG_SOURCE_VERSION:=3eb0ae6affbe4cd5038e846ad8e804c80e9cc012
PKG_RELEASE:=1
#PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/jackaudio/jack2.git
PKG_SOURCE_PROTO:=git
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)


include $(INCLUDE_DIR)/package.mk

CC="$(TARGET_CC)"
CFLAGS="$(TARGET_CFLAGS)"
LDFLAGS="$(TARGET_LDFLAGS)"
LIBS="$(TARGET_LIBS)"

define Package/jack2
	TITLE:=jack2
	SECTION:=sound
	CATEGORY:=Sound
	URL:=http://jackaudio.org
	DEPENDS:=+AUDIO_SUPPORT:alsa-lib +libsamplerate +libstdcpp +libc +librt +libopus
endef

define Build/Configure
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/installed
	(cd $(PKG_BUILD_DIR); \
		CC="$(TARGET_CC)" \
		CXX="$(TARGET_CXX)" \
		CXXFLAGS="$(TARGET_CXXFLAGS)" \
		CFLAGS="$(TARGET_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS)" \
		LIBS="$(TARGET_LIBS)" $(HOST_DIR)/usr/bin/python2 ./waf configure \
			--prefix=$(PKG_BUILD_DIR)/installed \
			--alsa \
	)
endef

define Build/Compile
	(cd $(PKG_BUILD_DIR); \
		CC="$(TARGET_CC)" \
		CXX="$(TARGET_CXX)" \
		CFLAGS="$(TARGET_CFLAGS)" \
		CXXFLAGS="$(TARGET_CXXFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS)" \
		LIBS="$(TARGET_LIBS)" $(HOST_DIR)/usr/bin/python2 ./waf build -j4; \
		CC="$(TARGET_CC)" \
		CXX="$(TARGET_CXX)" \
		CXXFLAGS="$(TARGET_CXXFLAGS)" \
		CFLAGS="$(TARGET_CFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS)" \
		LIBS="$(TARGET_LIBS)" $(HOST_DIR)/usr/bin/python2 ./waf install; \
	)
endef

define Package/jack2/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/installed/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/installed/lib/lib*so* $(1)/usr/lib/
#	$(CP) $(PKG_BUILD_DIR)/build/common/libjack.so.0 $(1)/usr/lib/
#	$(CP) $(PKG_BUILD_DIR)/build/common/libjackserver.so.0 $(1)/usr/lib/
#	$(CP) $(PKG_BUILD_DIR)/build/common/libjacknet.so.0 $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/jack
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/installed/lib/jack/*so* $(1)/usr/lib/jack/
endef

define Build/InstallDev
		mkdir -p $(1)/usr/{lib,include}
		${CP} $(PKG_BUILD_DIR)/installed/{lib,include} $(1)/usr/
endef

$(eval $(call BuildPackage,jack2))
