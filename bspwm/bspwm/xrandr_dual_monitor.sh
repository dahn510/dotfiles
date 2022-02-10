#!/usr/bin/bash

# This script is written for two monitor setup.
# This is useful if you have a laptop and monitor setup.

function set_dual_monitor()
{
	# ----Configure these values----
	# Position of the secondary monitor relative to the primary monitor
	# options: --above, --below, --right-of, --left-of
	secondary_mon_position="--right-of"
	# Resolution of two monitors
	# options: --auto, -- mode "pixel"x"pixel"
	# e.g --mode 1920x1080
	secondary_mon_res="--auto"
	primary_mon_res="--mode 1920x1080"

	# Get all connected display ports
	connected_dp="$(xrandr -q | awk '/ connected/ {print $0}')"

	# Get primary display port
	primary_dp=$(echo "$connected_dp" | awk '/ primary/ && / connected/ {print $1}')

	# Get secondary display port
	secondary_dp=$(echo "$connected_dp" | awk '!/ primary/ && / connected/ {print $1}')

	# Check if that display port has connection
	if [[ -n "$(echo ${secondary_dp})" ]]; then
		echo "Display port ${secondary_dp} is connected, configuring display to dual monitor"
		xrandr --output ${secondary_dp} ${secondary_mon_res} ${secondary_mon_position} ${primary_dp} \
			--output ${primary_dp} ${primary_mon_res}
	else
		echo "Display port ${secondary_dp} is not connected, configuring display to single monitor"
		xrandr --output ${primary_dp} ${primary_mon_res}
	fi
}

set_dual_monitor
