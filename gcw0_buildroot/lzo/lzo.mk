################################################################################
#
# lzo
#
################################################################################

LZO_VERSION = 2.06
LZO_SITE = http://www.oberhumer.com/opensource/lzo/download
LZO_LICENSE = GPLv2+
LZO_LICENSE_FILES = COPYING
LZO_INSTALL_STAGING = YES

CPPFLAGS="$CPPFLAGS -std=c90 -fPIC"
$(eval $(autotools-package))
$(eval $(host-autotools-package))
