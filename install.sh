#!/bin/bash

if [[ $EUID -eq 0 ]]; then
    echo "Installing system-wide (running as root)"
    mkdir -p /usr/lib/rhythmbox/plugins/syncrhythmboxlastfm
    rm -rf /usr/lib/rhythmbox/plugins/syncrhythmboxlastfm/*.pyc
    cp * /usr/lib/rhythmbox/plugins/syncrhythmboxlastfm
else
    echo "Installing for the current user only"
    mkdir -p ~/.local/share/rhythmbox/plugins/syncrhythmboxlastfm
    rm -rf ~/.local/share/rhythmbox/plugins/syncrhythmboxlastfm/*.pyc
    cp * ~/.local/share/rhythmbox/plugins/syncrhythmboxlastfm
fi

