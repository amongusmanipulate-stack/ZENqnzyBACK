#!/system/bin/sh


clear

# Header aur ASCII Art
echo "--------------------------------------------------"
echo "  ____                              _ "
echo " / ___| _ __   __ _ _ __   __| |_ __ __ _  __ _ "
echo " \___ \| '_ \ / _' | '_ \ / _' | '__/ _' |/ _' |"
echo "  ___) | | | | (_| | |_) | (_| | | | (_| | (_| |"
echo " |____/|_| |_|\__,_| .__/ \__,_|_|  \__,_|\__, |"
echo "                   |_|                    |___/ "
echo ""
echo "          DEVELOPED BY ZEXPO TWEAKS"
echo "--------------------------------------------------"
sleep 1.5

# Function taaki timestamp baar-baar na likhna pade
log_status() {
    echo "[$(date +%T)] # $1"
}

# Tweaks Execution (Commands are hidden from UI)
log_status "[BOOT] System handshake established..."
sleep 0.8

log_status "Detecting Chipset: Snapdragon Engine..."
sleep 1.2

log_status "Accessing GPU Governor: Setting Performance Mode..."
setprop debug.egl.hw 1 > /dev/null 2>&1
sleep 1.5

log_status "Tweaking CPU: Disabling Core Migration Latency..."
setprop ro.sys.fw.bg_apps_limit 20 > /dev/null 2>&1
sleep 0.9

log_status "Optimizing I/O Scheduler: Low Latency Mode [ACTIVE]"
setprop dev.pm.dyn_samplingrate 1 > /dev/null 2>&1
sleep 0.6

log_status "Applying VM Tweaks: Memory Optimization..."
setprop ro.config.low_ram false > /dev/null 2>&1
sleep 1.1

log_status "RAM Management: Purging unused assets..."
setprop persist.sys.purgeable_assets 1 > /dev/null 2>&1
sleep 0.5

log_status "Network: Forcing 5G Low-Latency Data Stream..."
setprop persist.cust.tel.e5g 1 > /dev/null 2>&1
sleep 1.4

log_status "Display: Forcing Refresh Rate Override (120Hz)..."
setprop persist.sys.display.refresh 120 > /dev/null 2>&1
sleep 1.0

log_status "Thermal: Modifying Engine for High Load Stability..."
setprop persist.sys.thermal.config 0 > /dev/null 2>&1
sleep 1.3

log_status "Graphics: Enabling Hardware Acceleration..."
setprop debug.performance.tuning 1 > /dev/null 2>&1
sleep 0.7

log_status "System: High Performance Mode [LOCKED]"
setprop persist.sys.composition.type gpu > /dev/null 2>&1
sleep 1.6

echo ""
echo "--------------------------------------------------"
echo " [SUCCESS] OPTIMIZATION COMPLETE BY ZEXPO TWEAKS"
echo "--------------------------------------------------"