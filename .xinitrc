# Setting caps lock key to escape key
xmodmap -e "clear lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
setxkbmap -option caps:swapescape

# Getting ThinkPad middle click scroll to work
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Setting wallpaper
feh --bg-scale Pictures/FreeBSD.png

# Startup programs
xterm -e tmux -2 &

# Window Manager
twm
