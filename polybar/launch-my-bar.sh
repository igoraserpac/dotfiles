#!/usr/bin/env bash

dir="$HOME/.config/polybar"

launch_bar() {
	killall -q polybar

	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

	polybar -q main -c "$dir/mybar/config.ini" &
}

launch_bar
