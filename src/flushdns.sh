#! /bin/bash

# A simple script to flush all DNS cache entries.
# Designed to be used to assit with network troubleshooting.
# This is the closest equivalent to 'ipconfig /flushdns' on Windows.
# Must be run as root, will exit 1 if not.

NAME=$(basename $0)
USER=$(id -u)

function usage {

    echo "
    $NAME -- The macOS equivalent to ipconfig /flushdns on Windows.
    No additional options to configure, see README.MD for more info.


    Usage (as a script): sudo ./$NAME
    Usage (as a command): sudo $NAME
    "

}

function flushdns {

    logger -i -p "info" "$NAME: Flushing DNS cache entries."
    echo "Flushing DNS cache..."
    dscacheutil -flushcache &&
    echo "Done."
    echo "Restarting mDNSResponder..."
    killall mDNSResponder &&
    echo "Done."

}

if [ "$USER" -ne "0" ]; then

    logger -i -p "error" "$NAME must be run as root"
    echo "ERROR: $NAME must be run as root"
    usage
    exit 1

elif [ "$USER" -eq "0" ]; then
    
    flushdns
    exit 0

fi
