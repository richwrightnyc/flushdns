#! /bin/bash

FILE=/usr/local/bin/flushdns

if [ -f $FILE ]; then

    echo "Are you sure you want to uninstall flushdns? (y/n)"
    rm -i $FILE
    exit 0

else

    logger -i -p "error" "$FILE not found"
    echo "ERROR: $FILE not found"
    exit 1

fi
