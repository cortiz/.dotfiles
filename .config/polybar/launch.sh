#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar cortiz-botton &
polybar cortiz & 
polybar cortiz-m2 & 
polybar cortiz-botton-m2 & 

echo "Polybar launched..."
