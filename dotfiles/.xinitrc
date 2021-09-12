slstatus &
xbindkeys &
unclutter -idle 3 &
xrdb ~/.Xresources &
feh --bg-scale .background.png &
dunst &
xautolock -time 20 -locker slock &
urxvtd -q &
exec dwm > ~/.dwm.log
