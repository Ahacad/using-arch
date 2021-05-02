#! /usr/bin/sh

# system setup
pacman -S wpasupplicant dhcpcd visudo

# for GUI, wm (windows managers) also needs this
pacman -S xorg xorg-xinit
pacman -S compton redshift sxhkd xwallpaper bspwm dunst

# developer essentials 
pacman -S neovim git tmux zsh openssh zip unrar unzip mlocate cronie gparted networkmanager

# programming languages

# handy tools
pacman -S fzf mpv sxiv pandoc pdftk alsa-utils zathura-pdf-mupdf zathura-djvu zathura-ps lazygit alacritty

# for CJK
pacman -S ibus-rime polipo

# fonts
pacman -S adobe-source-code-pro-fonts rxvt-unicode noto-fonts noto-fonts-emoji ttf-font-awesome

# for fun
pacman -S cowsay

# =====================================================

echo "Install yay by instructions from README, and go to use yay.sh"