#!/bin/bash

# Prompt on number of players/timers to display
echo "Welcome to chain-timer!"
echo "Number of timers: "
read num_timers

# Function to display a stopwatch
start_timer () {
  SECONDS=0
  MINUTES=0
  while : 
  do
     tput cup "$1" 0
     if [ $SECONDS -gt 59 ]; then
        SECONDS=0
        MINUTES=$((MINUTES+1))
     fi
     echo "$MINUTES min $SECONDS s       "
     sleep 1
   done
}


# Execute
clear
echo "Press any key to stop timer"
for (( i=1; i<=$num_timers; i++));
do
  # Starts a timer process in the background
  start_timer $i &
  # Saves the process ID to be killed when moving to next timer
  pid=$!
  # Trap that kills process on exit of script
  trap "kill $pid 2>/dev/null" EXIT

  # While the process is running, test for key press
  # If key is pressed, kill process and break
  while kill -0 $pid 2>/dev/null; do
    read -n 1
    if [ $? = 0 ] ; then
      kill -9 $pid &>/dev/null;
      break;
    fi
    sleep 0.01
  done
done

trap - EXIT
