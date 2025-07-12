#!/bin/env bash

CAPS_STATUS=$(hyprctl devices | grep -B 6 "main: yes" | grep "capsLock" | head -1 | awk '{print $2}')

if [ "$CAPS_STATUS" = "yes" ]; then
    echo "Caps Lock active"
else
    echo ""
fi

# Check for Num Lock
NUM_STATUS=$(hyprctl devices | grep -B 6 "main: yes" | grep "numLock" | awk '{print $2}')

if [ "$NUM_STATUS" = "no" ]; then
    echo "Num Lock deactive"
fi