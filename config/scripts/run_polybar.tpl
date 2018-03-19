#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybars for every connected monitor
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -c ~/.config/i3/polybar.conf standard &
    MONITOR=$m polybar -c ~/.config/i3/polybar.conf top &
  done
else
  polybar -c ~/.config/i3/polybar.conf standard &
  polybar -c ~/.config/i3/polybar.conf top &
fi

echo "Bars launched..."
