import sys
import os
from subprocess import call

# run `tput civis invisible` before running this script

# TODO: while loop to wait for response, then come back to run this video loop again

while 1: 
  os.system("clear")

  FNULL = open(os.devnull, "w")
  call(["omxplayer", "/home/pi/pe/PE2016.mp4"], stdout=FNULL)

# run `tput cnorm normal` to restore terminal
