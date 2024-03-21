#!/bin/sh

if command -v ddcutil &>/dev/null; then
  ddcutil setvcp 10 $1 --bus 10 --sleep-multiplier 0
fi
