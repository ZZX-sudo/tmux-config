#!/usr/bin/bash
release=`lsb_release -i`
case "$release" in
    "Ubuntu")
        sudo apt update && sudo apt install python3-autopep8 flake8 python3-ipdb 
        ;;
    "Arch")
        sudo pacman -Syy flake8 autopep8 python-ipdb 
        ;;
esac
