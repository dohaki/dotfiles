#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars on every monitor
for m in $(xrandr -q | grep " connected" | cut -d ' ' -f1); do
    MONITOR=$m polybar --reload top &
    MONITOR=$m polybar --reload bottom &
done

echo "Bars launched..."
