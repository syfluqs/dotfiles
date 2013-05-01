#mounting devices
udisks --mount /dev/sda2 &
udisks --mount /dev/sda4 &
udisks --mount /dev/sda5 &

#turn on numlock
/home/knoppix/scripts/numlockx/numlockx-1.2/numlockx on &

#turn on deadbeef, i like music!
/opt/deadbeef/bin/deadbeef &

#run klipper
klipper &

#starting nm-applet
#this f******* piece of sh** is not starting on its own!.
nm-applet

mplayer /home/knoppix/scripts/start.ogg &

#xcompmgr
#xcompmgr -n