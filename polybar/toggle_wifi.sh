#!/bin/sh
result=$(rfkill list wlan | grep Soft)

case "$result" in
    *no*)
        echo blocked
        rfkill block wlan
        ;;
    *yes*)
        echo Unblocked
        rfkill unblock wlan
        ;;
esac
