#!/bin/bash

while true; do
  # Get the ID of the currently active window
  ACTIVE_WINDOW=$(xdotool getactivewindow)

  # Check if the active window is fullscreen
  IS_FULLSCREEN=$(xprop -id $ACTIVE_WINDOW | grep "_NET_WM_STATE_FULLSCREEN")

  if [[ "$IS_FULLSCREEN" ]]; then
    # Hide Polybar
    polybar-msg cmd hide
  else
    # Show Polybar
    polybar-msg cmd show
  fi

  # Check every second
  sleep 1
done

