lunch_others_targets=()
for device in $(curl -s https://raw.githubusercontent.com/CesiumOS/vendor_aosp/ten/cesium.devices)
do
    for var in user userdebug eng; do
        lunch_others_targets+=("cesium_$device-$var")
    done
done
