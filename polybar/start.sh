#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

is_hdmi_connected=$(xrandr |grep ' connected' |grep 'HDMI' |awk '{print $1}')

if [[ ! -z "$is_hdmi_connected" ]]; then
    polybar bottom_hdmi -c $HOME/.config/polybar/config.ini
else
    polybar bottom_auto -c $HOME/.config/polybar/config.ini
fi

# Launch polybar
# polybar -c $HOME/.config/polybar/config.ini

