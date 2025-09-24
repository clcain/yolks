#!/bin/bash

if [ ! -f /tmp/startup.sh ]
then
    echo "#!/bin/bash" > /tmp/startup.sh
    echo "$STARTUP" >> /tmp/startup.sh
    chmod +x /tmp/startup.sh
fi

cat /tmp/startup.sh

/tmp/startup.sh
