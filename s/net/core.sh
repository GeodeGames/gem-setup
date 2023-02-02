#!/bin/bash

if [[ $1 = "-R" ]]; then
    systemctl disable NetworkManager
    pacman -R networkmanager
    
    exit 0
fi

pacman -S --needed networkmanager
systemctl enable NetworkManager