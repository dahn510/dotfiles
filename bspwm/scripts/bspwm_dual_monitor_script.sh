#!/usr/bin/bash

# The script will configure bspwm desktop settings when an external monitor has been connected
# as the name of this file suggests, it is for dual monitor setup.

function bspwm_dual_monitor()
{
	# Get all connected display ports
	connected_dp="$(xrandr -q | awk '/ connected/ {print $0}')"

	# Get primary display port
	primary_dp=$(echo "$connected_dp" | awk '/ primary/ && / connected/ {print $1}')

	# Get secondary display port
	secondary_dp=$(echo "$connected_dp" | awk '!/ primary/ && / connected/ {print $1}')

	# My preferred desktop set up for dual monitors
	# Change this if you want something different
	secondary_desktop="6 7 8 9 0"
	primary_desktop="1 2 3 4 5"

	# Use this if no external monitor is plugged in
	one_mon_desktop="1 2 3 4 5 6 7 8 9 0"

	# Check if that display port has connection
	if [[ -n "$(echo $secondary_dp)" ]]; then
		echo "Secondary display port '${secondary_dp}' is connected, configuring bspwm to dual monitor setup"
		bspc monitor $secondary_dp -d $secondary_desktop
		bspc monitor $primary_dp -d $primary_desktop
	else
		# No secondary monitor has been detected
		echo "Secondary display port not connected, configuring bspwm to single monitor setup"
		bspc monitor ${primary_dp} -d $one_mon_desktop
	fi
}

bspwm_dual_monitor
