#!/usr/bin/env bash

# Terminate any running instances of polybar
# If ipc is enabled for all bars, use 'polybar-msg cmd quit'
# Otherwise, use the more forceful approach:
killall -q polybar

# Wait until all polybar processes are closed
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar left1 & disown
polybar left2 & disown
polybar center & disown
polybar right & disown

echo "Bars launched..."

#echo "---" | tee -a $HOME/Documents/Log/polybar1.log $HOME/Documents/Log/polybar2.log
#polybar left 2>&1 | tee -a $HOME/Documents/Log/polybar1.log & disown
#polybar right 2>&1 | tee -a $HOME/Documents/Log/polybar2.log & disown
