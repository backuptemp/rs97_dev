#############################################################
#
# gmenu2x
#
#############################################################
GMENU2X_VERSION = master
GMENU2X_SITE = git://projects.qi-hardware.com/gmenu2x.git
GMENU2X_DEPENDENCIES = sdl sdl_ttf dejavu-fonts libpng
GMENU2X_AUTORECONF = YES
GMENU2X_CONF_OPT = --with-sdl-prefix=$(STAGING_DIR)/usr \
				   --enable-platform=$(BR2_PACKAGE_GMENU2X_PLATFORM)

ifeq ($(BR2_PACKAGE_LIBOPK),y)
GMENU2X_DEPENDENCIES += libopk
endif

ifeq ($(BR2_PACKAGE_LIBXDGMIME),y)
GMENU2X_DEPENDENCIES += libxdgmime
endif

$(eval $(autotools-package))
