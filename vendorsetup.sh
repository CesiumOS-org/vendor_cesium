lunch_others_targets=()
for device in $(curl -s https://raw.githubusercontent.com/CesiumOS-org/vendor_cesium/eleven/cesium.devices)
do
    for var in user userdebug eng; do
        lunch_others_targets+=("cesium_$device-$var")
    done
done
