## Common FML Config ##

# Superuser
#SUPERUSER_EMBEDDED := true
#SUPERUSER_PACKAGE_PREFIX := com.android.settings.fml.superuser

#PRODUCT_PACKAGES += \
#	Superuser \
#	su

#PRODUCT_PROPERTY_OVERRIDES += \
#	persist.sys.root_access=1

# Boot animation
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# FML init.rc
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/etc/init.fml.rc:root/init.fml.rc

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true \
	ro.com.android.dataroaming=false \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.setupwizard.enterprise_mode=1

# init.d support
PRODUCT_COPY_FILES += \
	vendor/fml/prebuilt/common/bin/sysinit:system/bin/sysinit

#root
#PRODUCT_COPY_FILES += \
#    vendor/fml/prebuilt/common/bin/app_process:system/bin/app_process \
#    vendor/fml/prebuilt/common/bin/app_process32:system/bin/app_process32 \
#    vendor/fml/prebuilt/common/bin/app_process32_original:system/bin/app_process32_original \
#    vendor/fml/prebuilt/common/bin/app_process_init:system/bin/app_process_init \
#    vendor/fml/prebuilt/common/bin/install-recovery.sh:system/bin/install-recovery.sh \
#    vendor/fml/prebuilt/common/bin/.ext/.su:system/bin/.ext/.su \
#    vendor/fml/prebuilt/common/app/SuperSU/SuperSU.apk:system/app/SuperSU/SuperSU.apk \
#    vendor/fml/prebuilt/common/etc/init.d/00root:system/etc/init.d/00root \
#    vendor/fml/prebuilt/common/lib/libsupol.so:system/lib/libsupol.so \
#    vendor/fml/prebuilt/common/xbin/daemonsu:system/xbin/daemonsu \
#    vendor/fml/prebuilt/common/xbin/su:system/xbin/su \
#    vendor/fml/prebuilt/common/xbin/sugote:system/xbin/sugote \
#    vendor/fml/prebuilt/common/xbin/sugote-mksh:system/xbin/sugote-mksh \
#    vendor/fml/prebuilt/common/xbin/supolicy:system/xbin/supolicy    

PRODUCT_PACKAGES += \
	CellBroadcastReceiver \

# Custom CM packages
PRODUCT_PACKAGES += \
    Trebuchet \
    Apollo \
    LockClock
