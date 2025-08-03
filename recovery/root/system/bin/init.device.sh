#!/sbin/sh
# This script is Needed to Set Automatically Device Props.

prjName=$(cat /proc/oplusVersion/prjVersion)
echo $prjName

case $prjName in
    "20682")
        resetprop "ro.product.model" "Realme 7/Narzo 20 Pro/Narzo 30 4G"
        resetprop "ro.build.product" "RMX2151L1"
        resetprop "ro.product.device" "RMX2151L1"
        ;;
    *)
        resetprop "ro.product.model" "Realme 6/6i(Indian)/6s/Narzo"
        resetprop "ro.build.product" "RMX2001L1"
        resetprop "ro.product.device" "RMX2001L1"
        ;;
esac

exit 0
