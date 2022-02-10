#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config

# Get all connected display ports
connected_dp="$(xrandr -q | awk '/ connected/ {print $0}')"

# Get primary display port
int_dp=$(echo "$connected_dp" | awk '/ primary/ && / connected/ {print $1}')

# Get secondary display port
ext_dp=$(echo "$connected_dp" | awk '!/ primary/ && / connected/ {print $1}')

if [[ -n "$(echo $ext_dp)" ]]; then
	echo "External monitor detected"
	polybar main 2>&1 | tee -a /tmp/polybar.log & disown
	polybar secondary 2>&1 | tee -a /tmp/polybar.log & disown
else
	polybar main 2>&1 | tee -a /tmp/polybar.log & disown
fi

echo "Polybar launched..."
