#!/bin/bash
#
# Prompt for root

sudo apt-get --yes --force-yes update
sudo apt-get --yes --force-yes upgrade

# https://tecadmin.net/install-python-3-5-on-ubuntu/
# Python Install
# Python dependencies
sudo apt-get install --yes --force-yes build-essential checkinstall
sudo apt-get install --yes --force-yes libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# Download Python
cd /usr/src
wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz

# Extract
sudo tar xzf Python-3.5.2.tgz

# Compile
cd Python-3.5.2
sudo ./configure
sudo make altinstall

# Check version
python3.5 -V


# https://home-assistant.io/docs/installation/raspberry-pi/
# Install Home Assistant Dependencies
sudo apt-get install python3 python3-venv python3-pip

# Create an account for HA
sudo useradd -rm home-assistant
cd /srv
sudo mkdir homeassistant
sudo chown homeassistant:homeassistant homeassistant

sudo su -s /bin/bash homeassistant
cd /srv/homeassistant
python3 -m venv .
source bin/activate

pip3 install homeassistant

hass
