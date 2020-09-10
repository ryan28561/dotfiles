#!/usr/bin/env bash

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload the-one-bar &
  done
else
  polybar --reload the-one-bar &
fi

echo "Bars launched..."
