################################################################################
#
# wpebackend-fdo
#
################################################################################

WPEBACKEND_FDO_VERSION = 1.0.0
WPEBACKEND_FDO_SITE = https://wpewebkit.org/releases
WPEBACKEND_FDO_SOURCE = wpebackend-fdo-$(WPEBACKEND_FDO_VERSION).tar.xz
WPEBACKEND_FDO_LICENSE = BSD-2-Clause
WPEBACKEND_FDO_INSTALL_STAGING = YES
WPEBACKEND_FDO_DEPENDENCIES = libegl libglib2 libwpe wayland

$(eval $(cmake-package))
