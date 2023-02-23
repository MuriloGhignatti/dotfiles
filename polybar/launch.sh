#!/bin/bash

killall -q polybar

polybar top 2>&1 | tee -a /tmp/polybar.log & disown
polybar bottom 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
