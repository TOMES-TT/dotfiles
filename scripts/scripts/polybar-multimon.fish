#!/usr/bin/env fish

if type xrandr
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1)
        MONITOR=$m polybar --reload main &
    end
    # polybar --reload tiny
else
    polybar --reload main & # polybar --reload tiny
end
