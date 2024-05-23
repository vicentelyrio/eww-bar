#!/bin/sh

if command -v ddcutil &>/dev/null; then
  # bus=$(ddcutil detect --terse --sleep-multiplier 0 | grep bus | awk -F '-' '{print $2}')
  # brightness=$(ddcutil getvcp 10 --bus 19 --sleep-multiplier 0 --terse | grep VCP | awk -F ' ' '{print $4}')
  brightness=$(brightnessctl g)

  if [[ "$brightness" -gt 80 ]]; then
    echo "󰛨"
  elif [[ "$brightness" -le 80 && "$brightness" -ge 60 ]]; then
    echo "󱩕"
  elif [[ "$brightness" -le 60 && "$brightness" -ge 40 ]]; then
    echo "󱩓"
  else
    echo "󱩎"
  fi
fi
