#!/bin/bash

# Check if the kernel name does not contain "Ubuntu"
if ! [uname -a | grep -qi "ubuntu"]; then
    echo "This system is not running Ubuntu. Exiting."
    exit 1
fi

sudo apt -y update 
sudo apt -y upgrade

# Download and install Google Chrome if Chrome not installed
if ! [ -x "$(command -v google-chrome)" ]; then
    wget -qO- https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
    sudo apt install ./google-chrome-stable_current_amd64.deb
    rm -f google-chrome-stable_current_amd64.deb
else
    echo "Google Chrome is already installed."
fi

# Install other Important stuff
sudo apt -y install build-essential samba ark git dolphin kate kwrite konqueror meld cutecom putty vlc default-jre xfce4 xfce4-goodies wine vim ubuntu-restricted-extras wireshark automake cmake net-tools x264 x265 bison flex fakeroot gcc multilib g++-multilib expect ncurses-dev ffmpeg libgstreamer1.0-dev libssl-dev manpages-posix manpages-posix-dev kcalc kded5 xdotool openssh-server dolphin-plugins lib32z1
