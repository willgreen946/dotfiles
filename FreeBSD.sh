# Install script for packages on FreeBSD

# System tools
pkg install git doas lsblk tmux wget curl tty-clock ncdu

# Audio
pkg install mixer mixertui

# X11 Programs
pkg install xorg qutebrowser xsel-conrad wpa_supplicant_gui mpv mupdf fvwm3

# Browsers 
pkg install qutebrowser w3m

# Fonts
pkg install terminus-font terminus-ttf

# vi 
pkg install vim vifm bvi 

# Compilers / Programming
pkg install gcc tcc gdb cgdb gnustep nasm groff gmake

# Uncomment For intel GPU 
# pkg install mesa-dri drm-kmod mesa-libs libva-intel-driver xf86-video-intel
# pw usermod will -G wheel 
# sysrc -f /etc/rc.conf kld_list+=i915kms

# Fun stuff if you want fun stuff
# pkg install vitetris cointop 

# Remeber to compile htop-vim from source
# Uncomment if you didnt install the ports tree at first install
# git clone https://git.FreeBSD.org/ports.git /usr/ports

git clone https://github.com/africavoid/dots-freebsd
