#!/bin/bash
sudo apt install feh unclutter
DISPLAY=:0.0 feh --randomize --full-screen --slideshow-delay 30 --auto-rotate ~/Pictures &
mkdir -p ~/config/lxsession/LXDE-pi
echo "@unclutter -idle 0" > ~/.config/lxsession/LXDE-pi/autostart
