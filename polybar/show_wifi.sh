#!/bin/sh
result=$(rfkill list wlan | grep Soft)

case "$result" in 
    *no*)
        echo Unblocked
        ;;
    *yes*)
        echo blocked
        ;;
esac
