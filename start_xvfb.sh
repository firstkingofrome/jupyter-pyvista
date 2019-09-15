#!/bin/bash
export DISPLAY=:99.0
export PYVISTA_OFF_SCREEN=true
export PYVISTA_USE_PANEL=true
export PYVISTA_PLOT_THEME=document
# This is needed for Panel - use with cuation!
export PYVISTA_AUTO_CLOSE=false
which Xvfb > /dev/null
Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 &
sleep 3
exec "$@"
