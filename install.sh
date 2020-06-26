#!/bin/sh
if ! command -v xclip; then
    sudo apt install xclip
else
    echo "xclip is already the newest version."
    xclip -version
fi

if ! command -v gwatchfile; then
    chmod +x gwatchfile
    echo "making gwatchfile executable."
    sudo cp gwatchfile /usr/local/bin/gwatchfile
    echo "installed path /usr/local/bin/gwatchfile"
else
    echo 'gwatchfile is already installed in your system'
fi

if ! command -v gwatchsel; then
    chmod +x gwatchsel
    echo "making gwatchsel executable."
    sudo cp gwatchsel /usr/local/bin/gwatchsel
    echo "installed path /usr/local/bin/gwatchsel"
else
    echo 'gwatchsel is already installed in your system'
fi