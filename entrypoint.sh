#!/bin/bash

echo "Correcting mount point permissions ..."
chown "$SINUS_USER":"$SINUS_GROUP" -R "$SINUS_DATA"

echo "Checking for TeamSpeak SinusBot Updates ..."
sudo -u "$SINUS_USER" -c "$SINUS_DIR/ts3bot -update"

echo "Starting TeamSpeak SinusBot ..."
sudo -u "$SINUS_USER" -c "xinit $SINUS_DIR/ts3bot -- /usr/bin/Xvfb :1 -screen 0 800x600x16 -ac"
