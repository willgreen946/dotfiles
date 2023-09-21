# System tools
pkg install doas git tmux wget curl ncdu vifm neovim htop nano bvi

# Audio
pkg install mixer mixertui

# X11
pkg install xorg librewolf xsel-conrad wpa_supplicant_gui mpv mupdf feh mate-base

# Compilers / Programming
pkg install gcc tcc nasm gdb cgdb groff gmake pkgconf mono

# Some C libs
# pkg install sdl2 sdl2_mixer

# For Intel GPU
pkg install mesa-dri drm-kmod mesa-libs libva-intel-driver xf86-video-intel
pw usermod will -G wheel 
sysrc -f /etc/rc.conf kld_list+=i915kms


# GitHub repos
git clone https://github.com/willgreen946/dots-freebsd
