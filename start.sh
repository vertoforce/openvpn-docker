#!/bin/bash

sysctl -w net.ipv4.ip_forward=1
openvpn --config /etc/openvpn/server.conf
