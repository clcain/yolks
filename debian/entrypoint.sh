#!/bin/bash

echo "Running default /entrypoint.sh"
echo

if [ "${DEBUG,,}" = "true" ] || [ "${DEBUG}" = "1" ]
then
    env
    echo
fi

if [ -f /mnt/install/install.sh ]
then
    echo "Executing /mnt/install/install.sh"
    cat /mnt/install/install.sh
    echo
    /bin/bash /mnt/install/install.sh
elif [ -f /mnt/startup/startup.sh ]
then
    echo "Executing /mnt/startup/startup.sh"
    cat /mnt/startup/startup.sh
    echo
    /bin/bash /mnt/startup/startup.sh
elif [ ! -z "$STARTUP" ]
then
    echo "Executing \$STARTUP"
    echo "$STARTUP"
    echo
    /bin/bash -c "$STARTUP"
else
    echo "\$STARTUP is empty. Exiting."
fi
