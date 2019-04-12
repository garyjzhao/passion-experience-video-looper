# 2019 Passion Experience Video Looper

## Summary

This readme is specifically for 2019 Passion Experience.

This project sets up a Raspberry Pi to function as a video looper, utilizing omxplayer to run the video and /etc/rc.local to start up the script. Refer to [Jon Yen's Passion Experience Video Looper](https://github.com/jonyen/passion-experience-video-looper) for inital set up.

Noteable differences: I have the `boot.sh` script in the same directory as the video, whereas Jon had his video and `boot.sh` in different directories.

## Steps to Update Raspberry Pi with the latest Video file

Transferring video file to the Pi
1. Navigate to the directory containing the updated video file on your own computer
2. Identify the Raspberry Pi you will like to access and its IP Address (written on the post-its)
3. In Terminal, run `scp VIDEO-FILE-NAME.mp4 pi@<INSERT IP ADDRESS OF PI>:pe/`
4. Confirm that the new video is in `/home/pi/pe/` directory

Update the Pi Script to run video on boot
1. In the `boot.sh`, change `/home/pi/pe/VIDEO-NAME-GOES-HERE.mp4` to the video file name
2. Run `chmod 644 /home/pi/pe/boot.sh`
3. `reboot`
4. Once it has rebooted and loaded the OS, The video will autoplay in full screen after 10 seconds

**Troubleshooting**

If you are unable to SSH into the machine, check the Raspberry Pi Configuration > Interface to see if SSH is enabled.

If you are still unable to SSH, then you will need to re-image the microSD card and set it up from scratch. Instructions for setting up the image can be found here: https://www.raspberrypi.org/documentation/installation/installing-images/README.md
