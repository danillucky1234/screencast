#!/bin/bash

gcc xrectsel.c -lX11 -o xrectsel

echo "The file xrectsel.c was successfully compiled!"

chmod 755 screencast.sh

echo "screencast.sh have been added permissions! [755]"

cp xrectsel ~/.local/bin

echo "xrectsel binary was successfully copied to the ~/.local/bin/"

cp screencast.sh ~/.local/bin

echo "screencast.sh was successfully copied to the ~/.local/bin"
echo ""
echo "Now you can run screencast.sh from any directory you want!"
echo "Usage:"
echo "screencast.sh"
echo ""
echo "After starting screencast.sh grab any area using cursor and video will start"
echo "To stop recording the video use 'q' or Ctrl+C (SIGTERM)"