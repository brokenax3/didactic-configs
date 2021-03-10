#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run clipit
run fcitx5
run nm-applet
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
exec xrandr --output HDMI-0 --primary --auto --right-of eDP-1-1
exec brightnessctl -d intel_backlight s 20%
