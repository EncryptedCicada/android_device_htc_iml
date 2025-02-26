# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/htc/iml/iml-vendor.mk)

# Device
$(call inherit-product, device/htc/iml/device.mk)

# Device identifiers
PRODUCT_DEVICE := iml
PRODUCT_NAME := lineage_iml
PRODUCT_BRAND := Htc
PRODUCT_MODEL := HTC U12 life
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := iml

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="1.55.401.3 release-keys"
#    PRODUCT_NAME=iml \

BUILD_FINGERPRINT := Htc/imldugl_00401/htc_imldugl:8.1.0/OPM1.171019.026/190426:user/release-keys
