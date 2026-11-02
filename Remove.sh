#!/system/bin/sh
clear

# Header
echo "--------------------------------------------------"
echo "  ____                              _ "
echo " / ___| _ __   __ _ _ __   __| |_ __ __ _  __ _ "
echo " \___ \| '_ \ / _' | '_ \ / _' | '__/ _' |/ _' |"
echo "  ___) | | | | (_| | |_) | (_| | | | (_| | (_| |"
echo " |____/|_| |_|\__,_| .__/ \__,_|_|  \__,_|\__, |"
echo "                   |_|                    |___/ "
echo ""
echo "          REMOVER - ZEXPO TWEAKS"
echo "--------------------------------------------------"
sleep 1.5

log_status() {
    echo "[$(date +%T)] # $1"
}

# Reverting Tweaks (Hidden from UI)
log_status "Initiating removal of Zexpo Tweaks..."
sleep 0.8

log_status "Resetting GPU Governor to default..."
setprop debug.egl.hw 0 > /dev/null 2>&1
sleep 0.5

log_status "Restoring CPU Background limits..."
setprop ro.sys.fw.bg_apps_limit "" > /dev/null 2>&1
sleep 0.7

log_status "Re-enabling System Thermal Management..."
setprop persist.sys.thermal.config 1 > /dev/null 2>&1
sleep 1.0

log_status "Disabling Display Refresh Rate Override..."
setprop persist.sys.display.refresh "" > /dev/null 2>&1
sleep 0.6

log_status "Restoring Graphics Composition to default..."
setprop persist.sys.composition.type c2d > /dev/null 2>&1
sleep 0.8

log_status "Cleaning up cache and purgeable assets..."
setprop persist.sys.purgeable_assets 0 > /dev/null 2>&1
sleep 0.5

log_status "Removing Performance Tuning Flags..."
setprop debug.performance.tuning 0 > /dev/null 2>&1
sleep 1.2

log_status "System handshake: Restored to Stock."
sleep 1.5

echo ""
echo "--------------------------------------------------"
echo " [SUCCESS] ALL TWEAKS REMOVED SUCCESSFULLY"
echo " DEVELOPED BY ZEXPO TWEAKS"
echo "--------------------------------------------------"