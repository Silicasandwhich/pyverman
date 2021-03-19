#!/usr/bin/env bash
if [[ $HOME == "/root" ]]; then
    echo "error: do not run this script as root!" >&2
    exit 1
fi
echo -n "Would you like to install or uninstall? [I/u]: "
read ans
if [[ ${ans:0:1} == "u" || ${ans:0:1} == "U" ]]; then
    echo "uninstalling"
    echo -n "deleting cache..."
    sudo rm -rf $HOME/.pyverman
    echo "DONE"
    echo -n "removing pyverman script..."
    sudo rm /usr/bin/pyverman
    echo "DONE"
    echo "pyverman has been uninstalled."
else
    echo "installing"
    echo -n "creating pyverman cache folder..."
    sudo mkdir $HOME/.pyverman
    echo "DONE"
    echo -n "installing pyverman script..."
    curl https://raw.githubusercontent.com/silicasandwhich/pyverman/main/bin/pyverman > ~/.pyverman/pyverman
    sudo cp ~/.pyverman/pyverman /usr/bin/pyverman
    rm ~/.pyverman/pyverman
    sudo chmod +x /usr/bin/pyverman
    echo "DONE"
    echo "Installation complete! use 'pyverman -h' for more information"
fi
