################################################################################
#
# apitrace
#
################################################################################

APITRACE_VERSION = 0ef175f
APITRACE_SITE = $(call github,apitrace,apitrace,$(APITRACE_VERSION))

APITRACE_CONF_OPT = -DPYTHON_EXECUTABLE:STRING="$(HOST_DIR)/usr/bin/python"
ifneq ($(BR2_PACKAGE_XLIB_LIBX11),y)
APITRACE_CONF_OPT += -DCMAKE_C_FLAGS:STRING="$(TARGET_CFLAGS) -DMESA_EGL_NO_X11_HEADERS"
APITRACE_CONF_OPT += -DCMAKE_CXX_FLAGS:STRING="$(TARGET_CFLAGS) -DMESA_EGL_NO_X11_HEADERS"
endif

APITRACE_DEPENDENCIES = popt binutils host-python

$(eval $(cmake-package))
