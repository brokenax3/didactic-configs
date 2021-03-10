#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Wait until polybar shuts down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# echo "---" | tee -a /tmp/polybar1.log
# polybar example >>/tmp/polybar1.log 2>&1 & disown
# polybar bar2 >>/tmp/polybar2.log 2>&1 & disown

if type "xrandr"; then

    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do

        MONITOR=$m polybar --reload example &
        # echo "Bar $m launched."
    done
fi
# else
#   polybar --reload example & disown
# fi

echo "Bars launched..."
