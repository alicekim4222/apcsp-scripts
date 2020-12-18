#!/bin/bash

#list of droplets to ping


DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"


for DROPLET in $DROPLETS ; do
        ping -c 1 $DROPLET > /dev/null
        if [ $? -eq 0 ] ; then
                echo "$DROPLET : alive"
        else
                echo "$DROPLET : dead"
        fi
done

exit 0

