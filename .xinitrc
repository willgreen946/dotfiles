# Setting caps lock key to escape key
xmodmap -e "clear lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
setxkbmap -option caps:swapescape

# Setting the correct keymap
setxkbmap -layout gb

# Getting ThinkPad middle click scroll to work
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Startup programs
xterm &
xconsole &

# Wallpaper
feh --bg-scale $HOME/Pictures/wallpaper.png

# Window Manager
dwm
