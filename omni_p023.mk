# Release name
PRODUCT_RELEASE_NAME := p023

$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/asus/p023/device_p023.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p023
PRODUCT_NAME := omni_p023
PRODUCT_BRAND := asus
PRODUCT_MODEL := p023
PRODUCT_MANUFACTURER := asus
