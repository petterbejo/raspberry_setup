#!/bin/bash
sudo apt install feh unclutter
DISPLAY=:0.0 feh --randomize --full-screen --slideshow-delay 30 --auto-rotate ~/Pictures &
de_settings_dir="$HOME/config/lxsession/LXDE-pi"
mkdir -p "$de_settings_dir"
touch "$de_settings_dir/autostart"
echo "@unclutter -idle 0" >> "$de_settings_dir/autostart"
