# raspberry_setup

A repo to set up a Raspberry Pi.

Note that since we're installing Docker Compose, you must have a 64-bit capable OS installed. I use the Raspberry Pi touch display, so some of the commands for the screen management are different from those for HDMI.

It will give the Pi the following functionalities:

 - A digital photo frame
 - Run containers with Docker Compose, turning the Pi into a web server
 - Screen management
 - Fan management

This repo is work in progress.

If you do not have a GitHub user set up on your Pi, clone this repo with HTTPS and not SSH.

## A digital photo frame

Simple scripts to use the Pi as a digital photo frame. Photos will be uploaded via `scp`.

## Docker Compose

According to the [Docker documentation on installing the Docker Engine on Raspberry Pi](https://docs.docker.com/engine/install/raspberry-pi-os/), we need to [follow the instructions for Debian](https://docs.docker.com/engine/install/debian/).

## Screen management

The intent is to keep the Pi on at all times (for the web apps) but only have the screen be on when you're at home and awake.

Note that running setup.sh overwrites the current crontab with the cron job for the screen management in order to avoid appending the crontab each time setup.sh is run.

To append it, something like this should work:

```
crontab -l > mycron
cat screen_management/screen_management_cron >> mycron
crontab mycron
rm mycron
```

## Fan management

Since we don't want to be disturbed unnecessarily by fan noise, the fan will be temperature triggered.
