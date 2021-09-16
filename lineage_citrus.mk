# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from citrus device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := poco
PRODUCT_DEVICE := citrus
PRODUCT_MANUFACTURER := poco
PRODUCT_NAME := lineage_citrus
PRODUCT_MODEL := M2010J19CG

PRODUCT_GMS_CLIENTID_BASE := android-poco
TARGET_VENDOR := poco
TARGET_VENDOR_PRODUCT_NAME := citrus
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 11 Android-Q-build-20210906211733 V12.5.2.0.RJFEUXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/citrus_eea/citrus:11/RKQ1.201004.002/V12.5.2.0.RJFEUXM:user/release-keys
