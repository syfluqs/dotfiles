#mounting devices
udisks --mount /dev/sda2 &
udisks --mount /dev/sda4 &
udisks --mount /dev/sda5 &

#turn on numlock
/home/knoppix/scripts/numlockx/numlockx-1.2/numlockx on &

#turn on deadbeef, i like music!
/opt/deadbeef/bin/deadbeef &

#run klipper
xfce4-clipman &

#sakura -e "export PS1=\"\[\e[0;33m\]\u@\h:\w\$\[\e[00m\] \"" &
sakura &

conky &
cd 
conky -c .conkytime &
conky -c .conkycpu &

wallpaper="/home/knoppix/Pictures/walls/441567.jpg"
feh --bg-fill ${wallpaper}

lxpanel -p syfluqs1 &

o comp &

sleep 3
wmctrl -c "DeaDBeeF"

exit 0
