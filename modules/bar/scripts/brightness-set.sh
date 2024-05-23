#!/bin/sh

if command -v ddcutil &>/dev/null; then
  # ddcutil setvcp 10 $1 --bus 19 --sleep-multiplier 0
  brightnessctl s $1
fi
