#!/bin/bash
STEP=10 # percent brightness step, must be positive integer factor of 100
BRIGHTNESS_CODE=10

regex="current value =\s+([0-9]+),"
vcpOutput=$(ddcutil getvcp 10)
if [[ $vcpOutput =~ $regex ]]; then
    previousBrightness=${BASH_REMATCH[1]}
    echo "Previous brightness was $previousBrightness"
    newBrightness=$((previousBrightness - STEP))
    echo "New brightness is $newBrightness"
    if [ "$newBrightness" -ge 0 ]; then
        ddcutil setvcp $BRIGHTNESS_CODE $newBrightness --display 1
        ddcutil setvcp $BRIGHTNESS_CODE $newBrightness --display 2 # add and remove lines for your displays as necessary
    else
        echo "Brightness is already at the minimum"
        exit 0
    fi

else
    echo "Unable to determine previous brightness"
    exit 1
fi
