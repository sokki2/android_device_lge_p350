# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/pecan/overlay


PRODUCT_PACKAGES += \
    librs_jni \
    libaudio \
    libcamera \
    lights.pecan \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    com.android.future.usb.accessory \
    LiveWallpapers \
    LiveWallpapersPicker \
    FM \
    gps.pecan \
    gralloc.pecan \
    gadget_id \
    bash \
    dexpreopt \
    hwaddrs \
    copybit.pecan \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/init.pecan.rc:root/init.pecan.rc \
    device/lge/pecan/files/ueventd.pecan.rc:root/ueventd.pecan.rc \
    device/lge/pecan/files/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh \
    #device/lge/pecan/files/init.qcom.post_boot.sh:root/init.qcom.post_boot.sh \
    #device/lge/pecan/files/init.qcom.rc:root/init.qcom.rc \
    #device/lge/pecan/files/init.pecan.rc:root/init.pecan.rc \

#Configs
PRODUCT_COPY_FILES += \
    device/lge/pecan/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/pecan/configs/touch_mcs7000.kl:system/usr/keylayout/touch_mcs7000.kl \
    device/lge/pecan/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl \

# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/pecan/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/pecan/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \

# SD Card
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/vold.fstab:system/etc/vold.fstab \


# Audio
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/pecan/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/lge/pecan/files/etc/media_profiles.xml:system/etc/media_profiles.xml \

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

######################PROPERIATY FILES######################
# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/lib/hw/sensors.pecan.so:system/lib/hw/sensors.pecan.so \
    vendor/lge/pecan/proprietary/lib/hw/lights.pecan.so:system/lib/hw/lights.pecan.so \
    vendor/lge/pecan/proprietary/bin/ami304d:system/bin/ami304d \

# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/pecan/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/pecan/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/pecan/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/pecan/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/pecan/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/pecan/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/pecan/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/pecan/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \

# Wifi
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    vendor/lge/pecan/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/pecan/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/pecan/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \

# Audio
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    #vendor/lge/pecan/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \

# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/bin/qmuxd:system/bin/qmuxd \

# rmt_storage
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/bin/rmt_storage:system/bin/rmt_storage \

# port-bridge
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/bin/port-bridge:system/bin/port-bridge \

# wipeirface
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/bin/wiperiface:system/bin/wiperiface \

# Touchscreen firmware updater
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/bin/tsdown:system/bin/tsdown \
    vendor/lge/pecan/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin \

# netmgr
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/lge/pecan/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    vendor/lge/pecan/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \

# RIL
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/pecan/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/pecan/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/pecan/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/pecan/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/pecan/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/pecan/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/pecan/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/pecan/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/pecan/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/pecan/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/pecan/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/pecan/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/pecan/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/pecan/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/pecan/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/pecan/proprietary/lib/libsnd.so:system/lib/libsnd.so \
    vendor/lge/pecan/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/pecan/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/lge/pecan/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \
    vendor/lge/pecan/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \
    vendor/lge/pecan/proprietary/lib/liblgdrmwbxml.so:system/lib/liblgdrmwbxml.so \
    vendor/lge/pecan/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/pecan/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/pecan/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/pecan/proprietary/bin/rild:system/bin/rild \
    vendor/lge/pecan/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/lge/pecan/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
    vendor/lge/pecan/proprietary/lib/libloc.so:system/lib/libloc.so \
    vendor/lge/pecan/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \

# OMX
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/lge/pecan/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/pecan/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/pecan/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/pecan/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/pecan/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/pecan/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/pecan/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/pecan/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/pecan/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    vendor/lge/pecan/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/bin/BCM43291A0_003.001.013.0060.Pecan.hcd:system/bin/BCM43291A0_003.001.013.0060.Pecan.hcd \

# Key Character Map
PRODUCT_COPY_FILES += \
    vendor/lge/pecan/proprietary/usr/keychars/touch_mcs6000.kcm.bin:system/usr/keychars/touch_mcs6000.kcm.bin \

######################END OF PROPERIATY FILES######################

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/pecan/prebuilt/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_LOCALES += ldpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := lge_pecan
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := pecan
PRODUCT_MODEL := Optimus Me
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pecan
