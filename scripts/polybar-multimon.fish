#!/usr/bin/env fish

if type "xrandr"
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1)
        MONITOR=$m polybar --reload example &
    end
else
    polybar --reload example &
end
