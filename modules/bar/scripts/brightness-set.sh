#!/bin/sh

if command -v ddcutil &>/dev/null; then
  ddcutil setvcp 10 {}%
fi
