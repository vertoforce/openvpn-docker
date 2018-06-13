#!/bin/bash

echo "Building openvpn setup"

mkdir /etc/openvpn/easy-rsa
cp -r /usr/share/easy-rsa/* /etc/openvpn/easy-rsa/
cd /etc/openvpn/easy-rsa; source ./vars; ./clean-all; ./build-ca; ./build-key-server server; ./build-dh; ./build-key client1
