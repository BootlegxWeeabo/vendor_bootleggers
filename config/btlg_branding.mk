PRODUCT_BRAND ?= Bootleggers

# Versioning System
# Bootleggers version over here.
PRODUCT_VERSION_MAJOR = Yuuki
PRODUCT_VERSION_MINOR = niceparse.Alicization
BOOTLEGGERS_VERSION_NUMBER := 5.3-Desufied
BOOTLEGGERS_SONGCODEURL = https://cutt.ly/YNrkw0d
BOOTLEGGERS_EPOCH := $(shell date +%s)
BOOTLEGGERS_POSTFIX := $(shell date -d @$(BOOTLEGGERS_EPOCH) +"%Y%m%d-%H%M%S")

ifndef BOOTLEGGERS_BUILD_TYPE
    BOOTLEGGERS_BUILD_TYPE := OniiChan
endif

ifdef BOOTLEGGERS_BUILD_EXTRA
    BOOTLEGGERS_POSTFIX := -$(BOOTLEGGERS_BUILD_EXTRA)
    BOOTLEGGERS_MOD_SHORT := Bootleggers.xWeeabo.$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD)-$(BOOTLEGGERS_BUILD_TYPE).$(BOOTLEGGERS_POSTFIX)
else
    BOOTLEGGERS_MOD_SHORT := Bootleggers.xWeeabo.$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD)-$(BOOTLEGGERS_BUILD_TYPE)
endif

BOOTLEGGERS_VERSION := Bootleggers.xWeeabo.$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD).$(BOOTLEGGERS_VERSION_NUMBER)-$(BOOTLEGGERS_BUILD_TYPE).$(BOOTLEGGERS_POSTFIX)

PRODUCT_PACKAGES += \
    bootanimation.zip

#ifneq ($(TARGET_USE_SINGLE_BOOTANIMATION),true)
#    PRODUCT_PACKAGES += \
#        bootanimation2.zip \
#        bootanimation3.zip
#endif

# Wallpaper overlay selection for widescreen devices.
ifeq ($(BOOTLEGGERS_NOTCHED),true)
    DEVICE_PACKAGE_OVERLAYS += \
        vendor/bootleggers/overlay/wallpaper/widebois
else
    DEVICE_PACKAGE_OVERLAYS += \
        vendor/bootleggers/overlay/wallpaper/common
endif
