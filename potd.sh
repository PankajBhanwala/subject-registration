#!/bin/bash

# Number of times to reload and click
iterations=100000

# Loop for the specified number of iterations
for ((i=1; i<=iterations; i++))
do
  # Press 'r' to reload the page
  xdotool key ctrl+r

  # Wait for the page to load (adjust sleep time as necessary)
  sleep 1

  xdotool key ctrl+f
  sleep 0.3
  xdotool type "EC309"
  xdotool mousemove 1658 123   # Move the mouse to the specified coordinates
  xdotool click 1             # Perform a left mouse button click (button 1)
  python3 find_coordinate.py
  xdotool click 1
  
  xdotool key ctrl+f
  sleep 0.3
  xdotool type "CO427"
  xdotool mousemove 1658 123   # Move the mouse to the specified coordinates
  xdotool click 1             # Perform a left mouse button click (button 1)
  python3 find_webtech.py
  xdotool click 1
  
  xdotool mousemove 1658 123   # Move the mouse to the specified coordinates
  xdotool click 1             # Perform a left mouse button click (button 1)
  python3 find_webtech.py
  xdotool click 1
  # Optional: add a small delay before the next iteration
  sleep 2
done

