# Display
PRODUCT_PACKAGES += \
    copybit.msm8937 \
    gralloc.msm8937 \
    hwcomposer.msm8937 \
    libtinyxml \
    memtrack.msm8937

# Permissions
ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8939)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml
endif

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    debug.mdpcomp.idletime=600 \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    debug.enable.sglscale=1

ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8937)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610
else
ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8939)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609
endif
endif
