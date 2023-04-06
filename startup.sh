#!/bin/bash

trap exit_trap EXIT
set -e

exit_trap () {
  local lc="$BASH_COMMAND" rc=$?
  if [ $rc -ne 0 ]; then
    echo -e "\nCommand \033[1m[$lc]\033[0m exited with code [$rc]\n
            To debug try to execute this command by yourself without '-q' flag"
  fi
}

# [ Conky startup script ]
echo 'starting Conky...'
sleep 1
conky -qc ~/.config/conky/conkula/conky_config/conky_clock.lua
echo 'Clock is up...'
sleep 1
conky -qc ~/.config/conky/conkula/conky_config/conky_weather.lua
echo 'Weather info is up...'
sleep 1
conky -qc ~/.config/conky/conkula/conky_config/conky_system.lua
echo 'System info is up...'
sleep 1
conky -qc ~/.config/conky/conkula/conky_config/conky_spotify.lua
echo 'Spotify info is up...'

