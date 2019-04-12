# 2019 Passion Experience Video Looper

## Summary

This ReadME is specifically for 2019 Passion Experience.

This project sets up a Raspberry Pi to function as a video looper, utilizing omxplayer to run the video and /etc/rc.local to start up the script.

This ReadME is a fork of [Jon Yen's Passion Experience Video Looper](https://github.com/jonyen/passion-experience-video-looper). Refer to Jon Yen's ReadME for initial set up.


### Steps to Update Video file
1. Identify the Raspberry Pi you will like to access and its IP Address (written on the post-its)
2. `scp path/to/File.mp4 pi@<INSERT IP ADDRESS OF PI>:pe/`
3.


On each of the Raspberry Pi, there is a post-it with its IP Address written on it.


Update the PE files
1. Write /home/pi/boot.sh with the file included in this Github. Change the `.mp4` file to the video that will run on the Pi.
2. `chmod 644 /home/pi/boot.sh`
3. Update /etc/rc.local to run `/home/pi/boot.sh &` (note the ampersand to run it in the background)
4. `reboot`

**Troubleshooting**

If you wish to change the video file, you should obtain the IP address to the Raspberry Pi (this can be done by connecting another machine or device to the ethernet cable to determine the IP address, then plugging the Raspberry Pi back into the cable), then attempt to SSH into the machine and update the file via SCP. If unable to SSH into the machine, then you will need to re-image the microSD card and set it up from scratch. Instructions for setting up the image can be found here: https://www.raspberrypi.org/documentation/installation/installing-images/README.md

Depending on what configuration of Raspbian you have, you may be able to bypass /etc/rc.local on startup by pressing "Shift" during boot.
