#!/bin/bash

echo "Refreshing & Updating Apt..."
apt-get clean;apt-get update
echo "Installing applications..."
apt-get -y install curl iceweasel openvpn network-manager network-manager-gnome gnome-network-admin network-manager-openvpn network-manager-openvpn-gnome network-manager-vpnc network-manager-vpnc-gnome network-manager-openconnect network-manager-openconnect-gnome
echo "Restart Networking..."
/etc/init.d/networking restart
echo "Installing TOR Router..."
cd /opt;wget https://www.torproject.org/dist/torbrowser/5.5.4/tor-browser-linux64-5.5.4_en-US.tar.xz;tar -xvJf tor-browser-linux64-5.5.4_en-US.tar.xz

echo "Done..."
exit;
