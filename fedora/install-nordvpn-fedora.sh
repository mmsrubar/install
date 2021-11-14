#!/usr/bin/env bash

# Add NordVPN repo to fedora and install the NordVPN package from it.
# Works for fedora 34. Check if there isn't a new version at
# https://repo.nordvpn.com/yum/nordvpn/centos/noarch/Packages/n/

PACKAGE="nordvpn-release-1.0.0-1.noarch.rpm"

# download the repo package
wget https://repo.nordvpn.com/yum/nordvpn/centos/noarch/Packages/n/$PACKAGE 
# install the PGP so the package gets available
sudo dnf install -y $PACKAGE
# update to get info about the nordvpn package
sudo dnf makecache
# install the package it self
sudo dnf install -y nordvpn
# get your regular user to be able to run NordVPN
sudo usermod -aG nordvpn $USER

echo "log out -> log in"
echo "Log in to the app"
echo "nordvpn login"
