#!/bin/bash

echo "Running default /entrypoint.sh"

if [ -f /mnt/install/install.sh ]
then
    echo "Executing /mnt/install/install.sh"
    cat /mnt/install/install.sh
    /mnt/install/install.sh
elif [ -f /mnt/startup/startup.sh ]
then
    echo "Executing /mnt/startup/startup.sh"
    cat /mnt/startup/startup.sh
    /mnt/startup/startup.sh
elif [ ! -z "$STARTUP" ]
then
    echo "Executing \$STARTUP"
    echo "$STARTUP"
    eval "$STARTUP"
else
    echo "\$STARTUP is empty. Exiting."
fi
