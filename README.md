# passion-experience-pi-2016
Passion Experience 2016 Raspberry Pi project

In order to get this to work, the video file can be obtained here: https://drive.google.com/open?id=0B6MAa53BN12CVUpPZVQ5YlBUR28

The boot.sh script needs to be copied to /home/pi, and permissions need to be set to 755 to allow it to run. 

Once the boot.sh script has been confirmed to work, /etc/rc.local needs to be modified to run "/home/pi/boot.sh &" on startup. 
