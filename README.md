# passion-experience-pi-2016
Passion Experience 2016 Raspberry Pi project

**Summary**

This project sets up a Raspberry Pi to function as a video looper, utilizing omxplayer to run the video and /etc/rc.local to start up the script. 

The video file for this project can be obtained here: https://drive.google.com/open?id=0B6MAa53BN12CVUpPZVQ5YlBUR28

The boot.sh script in the repository needs to be copied to /home/pi, and permissions need to be set to 755 ("chmod 755 /home/pi/boot.sh") to allow it to run. 

Once the boot.sh script has been confirmed to work, /etc/rc.local needs to be modified to run "/home/pi/boot.sh &" (this should be added before "exit 0" in the file) on startup. 

**Steps**

Install Raspbian OS
1. Install Raspbian OS on the microSD card that will be used for the Raspberry Pi, following the instructions here: (https://www.raspberrypi.org/documentation/installation/installing-images/README.md). You need a separate computer to handle this step, unless you have a microSD card that has Raspbian pre-installed.
2. After installing Raspbian on the card, insert the card in the Raspberry Pi and power it on.

Check Internet connectivity
1. Attach a Wifi module to the Raspberry Pi, or insert an ethernet cable to it
2. Run `ping google.com`, check that you are getting a connection
3. From the command line (or if you have a GUI, open the Terminal app), run `ipconfig` to get the IP address. Note the IP address for this Raspberry Pi.

Update the PE files
1. Write /home/pi/boot.sh with the file included in this Github. Change the `.mp4` file to the video that will run on the Pi.
2. `chmod 644 /home/pi/boot.sh`
3. Update /etc/rc.local to run `/home/pi/boot.sh &` (note the ampersand to run it in the background)
4. `reboot`

**Troubleshooting**

If you wish to change the video file, you should obtain the IP address to the Raspberry Pi (this can be done by connecting another machine or device to the ethernet cable to determine the IP address, then plugging the Raspberry Pi back into the cable), then attempt to SSH into the machine and update the file via SCP. If unable to SSH into the machine, then you will need to re-image the microSD card and set it up from scratch. Instructions for setting up the image can be found here: https://www.raspberrypi.org/documentation/installation/installing-images/README.md

Depending on what configuration of Raspbian you have, you may be able to bypass /etc/rc.local on startup by pressing "Shift" during boot. 
