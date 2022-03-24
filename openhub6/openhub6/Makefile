# Copyright (c) 2022 Openhub6 Open Source Project

include $(TOPDIR)/rules.mk

PKG_NAME:=openhub6
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/openhub6
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS:=
	TITLE:=Openhub6 - OpenWrt Alarm Project
	URL:=http://www.openhub6.ca
	MAINTAINER:=<openhub6.developpers@gmail.com>
endef

define Package/openhub6/description
	Code for openhub6 project.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	mkdir -p $(PKG_BUILD_DIR)/etc
	mkdir -p $(PKG_BUILD_DIR)/root
	mkdir -p $(PKG_BUILD_DIR)/usr
	$(CP) ./files/etc/* $(PKG_BUILD_DIR)/etc
	$(CP) ./files/root/* $(PKG_BUILD_DIR)/root
	$(CP) ./files/usr/* $(PKG_BUILD_DIR)/usr
endef

define Build/Compile
endef

define Package/openhub6/install
	$(INSTALL_DIR) $(1)/etc
	cp -rf $(PKG_BUILD_DIR)/etc/* $(1)/etc/
	
	$(INSTALL_DIR) $(1)/etc/config
	$(CP) $(PKG_BUILD_DIR)/etc/config/* $(1)/etc/config/
	
	$(INSTALL_DIR) $(1)/etc/init.d
	$(CP) $(PKG_BUILD_DIR)/etc/init.d/* $(1)/etc/init.d/
	
	$(INSTALL_DIR) $(1)/etc/rc.d
	$(CP) $(PKG_BUILD_DIR)/etc/rc.d/* $(1)/etc/rc.d/	
	
	$(INSTALL_DIR) $(1)/root
	$(CP) $(PKG_BUILD_DIR)/root/* $(1)/root/

	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/usr/bin/* $(1)/usr/bin/

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller/security
	$(CP) $(PKG_BUILD_DIR)/usr/lib/lua/luci/controller/security/* $(1)/usr/lib/lua/luci/controller/security/
	
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/security-module
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/security-module
	$(CP) $(PKG_BUILD_DIR)/usr/lib/lua/luci/model/cbi/security-module/* $(1)/usr/lib/lua/luci/model/cbi/security-module/
endef

$(eval $(call BuildPackage,openhub6))

