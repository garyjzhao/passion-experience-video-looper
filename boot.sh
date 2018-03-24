#!/bin/sh

sleep 10
omxplayer --loop --aspect-mode=fill --no-osd /home/pi/pe/PE2016-Golgotha_Clouds_LOOP.mp4

##!/bin/sh -x
#trap exit 1 SIGINT SIGKILL SIGTERM

#SERVICE='omxplayer'
#while true;do
#if ps ax | grep -v grep | grep $SERVICE > /dev/null
#then echo "running" # sleep 1
#else
#xterm -fullscreen -fg black - bg black -e | omxplayer --loop --aspect-mode=fill --no-osd -o hdmi /home/pi/1.mpg

#SIGINT

#fi
#done
