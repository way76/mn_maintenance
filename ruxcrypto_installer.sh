#!/bin/bash

systemctl stop ruxcrypto-mn1.service
rm /etc/systemd/system/ruxcrypto-mn1.service
adduser rxc
adduser rxc sudo
