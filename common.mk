## Shishu Makefile. Done without Knowledge. 2017.
## Define automatically all the shishu stuff.

ifndef WITH_SHISHU_MUSIC
    WITH_SHISHU_MUSIC := false
endif

ifndef WITH_SHISHU_FM
    WITH_SHISHU_FM := false
endif

ifndef WITH_SHISHU_BROWSER
    WITH_SHISHU_BROWSER := false
endif

ifndef WITH_SHISHU_CLOCK
    WITH_SHISHU_CLOCK := false
endif

ifndef WITH_CUSTOM_LAUNCHER
    WITH_CUSTOM_LAUNCHER := false
endif

ifndef BUILD_SHISHU
    BUILD_SHISHU := false
endif

ifndef WITH_GCAM
    WITH_GCAM := false
endif

ifndef WITH_ADAWAY
    WITH_ADAWAY := false
endif

ifndef WITH_OPGAL
    WITH_OPGAL := false
endif

ifndef WITH_GBOARD
    WITH_GBOARD := false
endif

# Shishu Stuff directory
SHISHUSTUFF_PATH := vendor/shishu/prebuilt

PRODUCT_PACKAGES +=  \
    Camera2 \
    Gallery2

ifeq ($(WITH_SHISHU_MUSIC),true)
    PRODUCT_PACKAGES +=  \
        PulsarMusic
else
    PRODUCT_PACKAGES +=  \
        Music
endif

ifeq ($(WITH_SHISHU_FM),true)
    PRODUCT_PACKAGES +=  \
        MiXplorerPrebuilt
else
    PRODUCT_PACKAGES +=  \
        CMFileManager
endif

ifeq ($(WITH_SHISHU_BROWSER),false)
    PRODUCT_PACKAGES +=  \
        Browser2
else
    PRODUCT_PACKAGES +=  \
        $(WITH_SHISHU_BROWSER)
endif

ifeq ($(WITH_CUSTOM_LAUNCHER),false)
    PRODUCT_PACKAGES +=  \
        Launcher2
else
    PRODUCT_PACKAGES +=  \
        $(WITH_CUSTOM_LAUNCHER)
endif


ifeq ($(WITH_CUSTOM_LAUNCHER),LawnchairStable)
PRODUCT_COPY_FILES += \
    vendor/shishu/prebuilt/lawnchair/etc/permissions/privapp-permissions-lawnchair.xml:system/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/shishu/prebuilt/lawnchair/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:system/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

endif

ifeq ($(BUILD_SHISHU),true)

    #Add a extra overlay folder just for the wallpaper
    PRODUCT_PACKAGE_OVERLAYS += vendor/shishu/overlay/common

    #Include extras makefile to copy more stuff
    include vendor/shishu/extra.mk

    #Set the new custom sounds
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.config.ringtone=Frost.ogg \
        ro.config.notification_sound=Nights.ogg \
        ro.config.alarm_alert=LikeWhat.ogg

endif

ifeq ($(WITH_GCAM),true)
    PRODUCT_PACKAGES +=  \
        GoogleCamera
endif

ifeq ($(WITH_GBOARD),true)
    PRODUCT_PACKAGES +=  \
        LatinIMEGooglePrebuilt

    PRODUCT_COPY_FILES += \
    vendor/shishu/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

    ifeq ($(TARGET_ARCH),arm64)
    PRODUCT_COPY_FILES += \
        vendor/shishu/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so
    endif
endif

ifeq ($(WITH_ADAWAY),true)
    PRODUCT_PACKAGES +=  \
        AdAway
endif

ifeq ($(WITH_OPGAL),true)
    PRODUCT_PACKAGES +=  \
        OnePlusGallery
endif

PRODUCT_COPY_FILES += \
    vendor/shishu/configs/privapp-permission-turbo.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permission-turbo.xml


