#!/bin/bash
#
# Prompt for root
["$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

sudo apt-get --yes --force-yes install git git-core

# Install and build WiringPi
git clone git://git.drogon.net/wiringPi
cd wiringPi
./build

# Get the 433 MHz library
git clone --recursive git://github.com/ninjablocks/433Utils.git
cd 433Utils/RPi_utils
make all