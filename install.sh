#! /bin/bash

FILE=/usr/local/bin/flushdns

if [ -f $FILE ]; then

    logger -i -p "error" "$FILE already exists"
    echo "ERROR: $FILE already exists"
    exit 1

else
    
    logger -i p "info" "flushdns has been installed to /usr/local/bin."

    cp ./bin/flushdns $FILE
    chmod +x $FILE

    echo "Flushdns has been installed to $FILE."
    echo "To uninstall, run: ./uninstall.sh"
    echo "
    Usage: sudo flushdns"
    exit 0

fi