#!/bin/bash
#
# Prompt for root
["$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

sudo apt-get install git git-core

# Install and build WiringPi
git clone git://git.drogon.net/wiringPi
cd wiringPi
./build