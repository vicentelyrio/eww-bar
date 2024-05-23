#!/bin/sh

if command -v ddcutil &>/dev/null; then
  # ddcutil getvcp 10 --bus 19 --sleep-multiplier 0 --terse | grep VCP | awk -F ' ' '{print $4}'
  brightnessctl g
else
  40
fi

