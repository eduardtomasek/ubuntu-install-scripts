#!/bin/bash
sudo apt update
sudo apt install avahi-daemon

sudo systemctl start avahi-daemon
sudo systemctl enable avahi-daemon

sudo systemctl restart avahi-daemon

sudo hostnamectl set-hostname the-server

sudo systemctl restart systemd-networkd
sudo systemctl restart avahi-daemon
