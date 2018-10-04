#!/bin/bash

FILE=/tmp/.X11-unix/X1
ROOT_UID=0
E_NOTROOT=87    # Non-root exit error

# Run as root
if [ "$UID" -ne "$ROOT_UID" ]
then
        echo "Must be root to run this script."
        exit $E_NOTROOT
fi

# Test for argument
 if [ -f "$FILE" ]
 then
        echo "Attempting to fix your VNC issue by deleting" $FILE
        rm -f $FILE
 else
        echo $FILE "doesn't exist"
        echo "This isn't your VNC problem"
 fi
exit