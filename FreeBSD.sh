########################################################
#  _   _      _ _        __        __         _     _  #
# | | | | ___| | | ___   \ \      / /__  _ __| | __| | #
# | |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` | #
# |  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| | #
# |_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_| #
#													   #
########################################################
#													   #
# You will more than likely need this stuff			   #
#													   #
########################################################
# Install script for packages on FreeBSD

# System tools
pkg install git doas lsblk tmux wget curl tty-clock ncdu

# Audio
pkg install mixer mixertui

# X11 Programs
pkg install xorg qutebrowser xsel-conrad wpa_supplicant_gui mpv mupdf fvwm3 feh

# Browsers 
pkg install qutebrowser w3m

# Fonts
pkg install terminus-font terminus-ttf

# vi like programs (good to have them all)
pkg install vim vifm neovim

# On FreeBSD you will need a symlink to clangd15 to clang
ln -s /usr/local/bin/clangd15 /usr/local/bin/clangd

# C# development on FreeBSD
wget https://github.com/Thefrank/dotnet-freebsd-crossbuild/releases/download/v8.0.100-preview.7.23376.3/dotnet-sdk-8.0.100-preview.7.23376.3-freebsd-x64.tar.gz
tar -xzvf dotnet-sdk-8.0.100-preview.7.23376.3-freebsd-x64.tar.gz
ln -s /home/will/.dotnet/dotnet /usr/local/bin/dotnet

# Compilers / Programming
pkg install gcc tcc gdb cgdb nasm groff gmake pkgconf sdl2 mono

# May/May not need
# pkg install gnustep libobjc2 transmission-gtk bvi

# Uncomment For intel GPU 
pkg install mesa-dri drm-kmod mesa-libs libva-intel-driver xf86-video-intel
pw usermod will -G wheel 
sysrc -f /etc/rc.conf kld_list+=i915kms

# installing dotfiles
git clone https://github.com/africavoid/dots-freebsd

##################################################################################
#																				 #
#  Stuff you probably wont need but they're here none the less					 #
#																				 #
##################################################################################
# Fun stuff if you want fun stuff
# pkg install vitetris cointop 
#
# Music programs if needed
# pkg install lmms mixxx
#
# Add user to operator group
# Remember user must be in wheel and operator group for best experience
# pw groupmod operator -m will
#
# Remember to compile htop-vim from source
# Uncomment if you didnt install the ports tree at first install
# git clone https://git.FreeBSD.org/ports.git /usr/ports
