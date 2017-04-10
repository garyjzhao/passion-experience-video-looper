# passion-experience-pi-2016
Passion Experience 2016 Raspberry Pi project

Summary: 
This project sets up a Raspberry Pi to function as a video looper, utilizing omxplayer to run the video and /etc/rc.local to start up the script. 

The video file for this project can be obtained here: https://drive.google.com/open?id=0B6MAa53BN12CVUpPZVQ5YlBUR28

The boot.sh script in the repository needs to be copied to /home/pi, and permissions need to be set to 755 ("chmod 755 /home/pi/boot.sh") to allow it to run. 

Once the boot.sh script has been confirmed to work, /etc/rc.local needs to be modified to run "/home/pi/boot.sh &" (this should be added before "exit 0" in the file) on startup. 

Troubleshooting: 
If you wish to change the video file, you should obtain the IP address to the Raspberry Pi, then attempt to SSH into the machine and update the file via SCP. If unable to SSH into the machine, then you will need to re-image the microSD card and set it up from scratch. Instructions for setting up the image can be found here: https://www.raspberrypi.org/documentation/installation/installing-images/README.md
