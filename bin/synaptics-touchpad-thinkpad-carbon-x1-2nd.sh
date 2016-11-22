#!/usr/bin/env bash
#
# Change settings to do palm detection and disable touchpad while
# typing.  Make sure that "Disable while typing" is turned off in
# "Settings", "Mouse & Touchpad".
#
# Add this to startup scripts:
#
#   Dash "startup settings"
#   Add startup entry:
#
#     bash /home/user/.ubuntu_touchpad_settings.sh
#
# Debug and investigate these settings using xinput:
# 
# 1. List all available devices
# 
#     xinput list 
# 
# 1. Show device property values
# 
#     xinput list-props %ID%
# 


# 
# Synaptics Touchpad Custom Configuration
#
DEVICE="SynPS/2 Synaptics TouchPad"

# Turn on palm detection 
xinput --set-prop "$DEVICE" "Synaptics Palm Detection" 1

# Set palm detection dimensions WIDTH PRESSURE
xinput --set-prop "$DEVICE" "Synaptics Palm Dimensions" 6 1

# Ignore left and right edges using same X values as "Synaptic Edges"
xinput --set-prop "$DEVICE" "Synaptics Area" 1310 4826 0 0

# Set finger pressure sensitivity: Min, Max, Press
xinput --set-prop "$DEVICE" "Synaptics Finger" 30 35 0

# Tap Action Buttons for one, two and three finger Tap
xinput --set-prop "$DEVICE" "Synaptics Tap Action" 2 3 0 0 1 3 2

# Click Action Buttons for one, two and three finger Click
xinput --set-prop "$DEVICE" "Synaptics Click Action" 1 3 0

