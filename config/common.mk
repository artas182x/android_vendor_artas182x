## Common artas182x Config ##

# Superuser
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.artas182x.superuser

PRODUCT_PACKAGES += \
	Superuser \
	su

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.root_access=3

# Boot animation
PRODUCT_COPY_FILES += \
	vendor/artas182x/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# artas182x init.rc
PRODUCT_COPY_FILES += \
	vendor/artas182x/prebuilt/common/etc/init.artas182x.rc:root/init.artas182x.rc

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
	vendor/artas182x/prebuilt/common/bin/sysinit:system/bin/sysinit \
	vendor/artas182x/prebuilt/common/etc/init.d/00root:system/etc/init.d/00root

#root
#PRODUCT_COPY_FILES += \
#    vendor/artas182x/prebuilt/common/bin/app_process:system/bin/app_process \
#    vendor/artas182x/prebuilt/common/bin/app_process32:system/bin/app_process32 \
#    vendor/artas182x/prebuilt/common/bin/app_process32_original:system/bin/app_process32_original \
#    vendor/artas182x/prebuilt/common/bin/app_process_init:system/bin/app_process_init \
#    vendor/artas182x/prebuilt/common/bin/install-recovery.sh:system/bin/install-recovery.sh \
#    vendor/artas182x/prebuilt/common/bin/.ext/.su:system/bin/.ext/.su \
#    vendor/artas182x/prebuilt/common/app/SuperSU/SuperSU.apk:system/app/SuperSU/SuperSU.apk \
#    vendor/artas182x/prebuilt/common/etc/init.d/00root:system/etc/init.d/00root \
#    vendor/artas182x/prebuilt/common/lib/libsupol.so:system/lib/libsupol.so \
#    vendor/artas182x/prebuilt/common/xbin/daemonsu:system/xbin/daemonsu \
#    vendor/artas182x/prebuilt/common/xbin/su:system/xbin/su \
#    vendor/artas182x/prebuilt/common/xbin/sugote:system/xbin/sugote \
#    vendor/artas182x/prebuilt/common/xbin/sugote-mksh:system/xbin/sugote-mksh \
#    vendor/artas182x/prebuilt/common/xbin/supolicy:system/xbin/supolicy    

PRODUCT_PACKAGES += \
	CellBroadcastReceiver \

# Custom CM packages
PRODUCT_PACKAGES += \
    Trebuchet \
    Apollo \
    LockClock
