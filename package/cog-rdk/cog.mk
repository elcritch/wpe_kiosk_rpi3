################################################################################
#
# cog-fdk
#
################################################################################

COG_RDK_VERSION = 063df115456a24e464d1e6f284df22a0e65aea8e
COG_RDK_SITE = $(call github,Igalia,cog,$(COG_VERSION))
#COG_RDK_DEPENDENCIES = libglib2 
COG_RDK_DEPENDENCIES = libglib2 libwpe-rdk wpewebkit-rdk
COG_RDK_LICENSE = MIT
COG_RDK_LICENSE_FILES = COPYING
COG_RDK_CONF_OPTS = \
	-DCOG_RDK_HOME_URI='$(call qstrip,$(BR2_PACKAGE_COG_PROGRAMS_HOME_URI))'

ifeq ($(BR2_PACKAGE_COG_RDK_PLATFORM_FDO),y)
COG_RDK_DEPENDENCIES += libegl libgles wayland wpebackend-fdo
COG_RDK_CONF_OPTS += -DCOG_PLATFORM_FDO=ON
else
COG_RDK_CONF_OPTS += -DCOG_PLATFORM_FDO=OFF
endif

ifeq ($(BR2_PACKAGE_COG_RDK_PROGRAMS),y)
COG_RDK_CONF_OPTS += -DCOG_BUILD_PROGRAMS=ON
else
COG_RDK_CONF_OPTS += -DCOG_BUILD_PROGRAMS=OFF
endif

ifeq ($(BR2_PACKAGE_COG_RDK_PROGRAMS_DBUS_SYSTEM_BUS),y)
COG_RDK_CONF_OPTS += -DCOG_DBUS_SYSTEM_BUS=ON
else
COG_RDK_CONF_OPTS += -DCOG_DBUS_SYSTEM_BUS=OFF
endif

$(eval $(cmake-package))
