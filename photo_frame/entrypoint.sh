#!/bin/bash
sudo apt install feh unclutter
DISPLAY=:0.0 feh --randomize --full-screen --slideshow-delay 30 --auto-rotate ~/Pictures &
sudo echo "@unclutter -idle 0 -root" >> "/etc/xdg/lxsession/LXDE/autostart"
sudo echo "@unclutter -idle 0 -root" >> "/etc/xdg/lxsession/LXDE-pi/autostart"
