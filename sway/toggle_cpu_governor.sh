#!/bin/bash
function getcpumode() { 
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
} 

function setcpumode() { 
    CURRMODE=$(getcpumode)
    echo "Curr mode = $CURRMODE"
    if [[ $CURRMODE == "powersave" ]]
    then
        sudo cpupower frequency-set -g performance
        sudo cpupower frequency-set -u 3.5Ghz
        notify-send cpupower "Setting CPU governor to performance"
        # Send custom signal to waybar
        pkill -RTMIN+7 waybar
    elif [[ $CURRMODE == "performance" ]]
    then
        sudo cpupower frequency-set -g powersave 
        sudo cpupower frequency-set -u 2.6Ghz
        notify-send cpupower "Setting CPU governor to powersave"
        # Send custom signal to waybar
        pkill -RTMIN+7 waybar
    fi
} 

setcpumode; exit 0
