#!/bin/sh

cd "$(dirname "$0")"

python3.9 weather-script.py
rsvg-convert --background-color=white -o weather-script-output.png weather-script-output.svg
pngcrush -c 0 -nofilecheck weather-script-output-new.png weather-script-output.png
cp -f weather-script-output.png ~/weatherserver/weather-script-output-new.png
