#!/bin/sh

if command -v ddcutil &>/dev/null; then
  brightness=$(ddcutil getvcp 10 --bus 10 --sleep-multiplier 0 --terse | grep VCP | awk -F ' ' '{print $4}')

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
