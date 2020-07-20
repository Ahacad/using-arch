#! /bin/bash

# grub
pacman -S grub
pacman -S efibootmgr
pacman -S intel-ucode
pacman -S os-prober

# X11
pacman -S xorg-server
pacman -S xorg-xinit
pacman -S xorg-fonts  
pacman -S xorg-xwininfo

# utilities
pacman -S wpa_supplicant        # for network
pacman -S dhcpcd                # for network
pacman -S ntfs-3g               # for mounting usb nfts disk
pacman -S alsa-utils            # for sound adjustments
pacman -S python-pip            # for python pip

# languages
pacman -S go                    # golang


# tools
pacman -S vim                   # an awesome command line text editor
pacman -S git                   # an awesome version control tool
pacman -S tmux                  # for command line multi-window
pacman -S zsh                   # yet another good shell
pacman -S openssh               # ssh

# optional tools
pacman -S redshift              # adjust screen color for sake of your eyes (night light)
pacman -S compton               # for transparent window, I'm using dwm
pacman -S sxhkd                 # for shortcuts
pacman -S fzf                   # fuzzy file finder, for searching for files
pacman -S xwallpaper            # set wallpaper
pacman -S shadowsocks-libev     # shadowsocks to bypass the GFW
pacman -S mpv                   # a video player
pacman -S sxiv                  # an image viewer
pacman -S ffmpeg                # command line sound editing 
pacman -S unrar                 # uncompress
pacman -S unzip                 # uncompress
pacman -S mlocate               # for the command locate
pacman -S gedit                 # a none-command line text editor
pacman -S zathura-pdf-mupdf     # zathura, a good file viewer
pacman -S zathura-djvu
pacman -S zathura-ps
pacman -S ibus                  # for typing in Chinese and Japanese
pacman -S ibus-rime             # Rime - an open source typing tool
pacman -S dunst                 # for notify-send
pacman -S pandoc                # great book format converter
pacman -S texlive-most          # every writer needs this
pacman -S texlive-lang          # extra package for some languages like Chinese, Japanese, Greek, etc.
pacman -S biber                 # utility used to handle biblatex

pacman -S networkmanager        # for managing network

# fonts
pacman -S adobe-source-code-pro-fonts 
pacman -S rxvt-unicode
pacman -S noto-fonts
pacman -S noto-fonts-emoji
pacman -S ttf-font-awesome

# pip
pip3 install ueberzug

# manual install
# lazygit from AUR


# Remindings:
# Some of the packages installed above require dependencies like programming languages (go, perl, etc.) and pacman automatically installed them. You might need to install the dependencies yourself if you want those and didn't install all the above tools
