# Inherit device configuration for VZW Droid RAZR.
$(call inherit-product, device/motorola/spyder/full_spyder.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/aicp/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/aicp/configs/common.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/aicp/overlay/spyder

# Setup device specific product configuration.
PRODUCT_NAME := aicp_spyder
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := spyder
PRODUCT_DEVICE_PREFIX := cdma
PRODUCT_MODEL := XT912
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := DROID RAZR
PRODUCT_SFX := vzw

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
-include vendor/aicp/configs/bootanimation.mk
