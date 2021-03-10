#!/bin/bash

if [[ -z "$(pgrep -x spotify)" ]]; then

    spotify &
    sleep 1
    playerctl --player=spotify play
else

    playerctl --player=spotify play-pause
fi
