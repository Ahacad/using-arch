


## Introduction

Using Arch Linux is a enjoyable experience, for you can customize it to your needs, installing Arch is not.

This repo is an **opinioned** repo for installing basic and advanced tools **after you successfully install Arch and boot into it**.

This repo containes a `setup.sh` shell script to set up arch configurations after installing, this will contain lots of common tools that will give you a better *development experince*. Due to the nature of all the open-sourced tools, their way of configurations **may vary from time to time**, and some of them will have to be set up manually for this very moment, I will explain them one by one below.

This repo is related to my [Configurations](https://github.com/ahacad/Configurations) and [wallpapers](https://github.com/Ahacad/wallpaper)

## The process to use this repo

`src/pacman.sh` -> install `yay` -> `src/yay.sh` -> look at the `More configurations` part and do some extra manual setups -> `$HOME/Configurations` -> use `install.sh` in Configurations

Firstly you setup Arch Linux programs, and then insall personal configurations.

## Explanation of `setup.sh`

### System setup

| software name                                                 | explanation            |
| ---                                                           | ---                    |
| wpasupplicant                                                 | for network            |
| dhcpcd                                                        | for ip address         |
| [base-devel](https://archlinux.org/groups/x86_64/base-devel/) | development essentials |


### GUI setup

```bash
pacman -S xorg xorg-xinit
pacman -S compton redshift sxhkd xwallpaper bspwm dunst
```

This 2 lines setup GUI for you, I use **bspwm**.

| software name | explanation                                          |
| --------      | -------                                              |
| xorg          | the X server                                         |
| bspwm         | bspwm windows manager                                |
| xwallpaper    | for wallpaper                                        |
| compton       | for transparent windows                              |
| redshift      | warmer screen to protect your eyes                   |
| sxhkd         | the universal shortcut manager that bspwm replies on |
| dunst         | GUI notification service                             |

### Developement essentials

| software name     | explanation                             |
| --------          | -------                                 |
| neovim            | the new-vim                             |
| git               | version control                         |
| tmux              | terminal multiplexer (multiple windows) |
| zsh               | the zsh shell                           |
| openssh           | ssh                                     |
| zip, unzip, unrar | compress tool                           |
| mlocate           | for `locate`                            |
| cronie            | crontab service                         |
| gparted           | GUI disc manager                        |
| networkmanager    | network management                      |

### Programming languages

| software name                               | explanation                               |
| --------                                    | -------                                   |
| python                                      |                                           |
| python-pip                                  | pip python package manager                |
| nodejs                                      |                                           |

### Handy tools

| software name                               | explanation                               |
| --------                                    | -------                                   |
| fzf                                         | fuzzy file finder, good for finding files |
| mpv                                         | video viewer                              |
| sxiv                                        | image viewer                              |
| pandoc                                      | universal file format converter           |
| pdftk                                       | manipulate pdf                            |
| alsa-utils                                  | manage sounds                             |
| lazygit                                     | git TUI                                   |
| alacritty                                   | alacritty the terminal emulator           |
| zathura-pdf-mupdf, zathura-djvu, zathura-ps | the zathura file viewer                   |

### CJK related 

| software name                               | explanation                               |
| --------                                    | -------                                   |
| ibus-rime                                   | the rime input method editor              |
| polipo                                      | you'll need proxy to work in China        |
|                                             |                                           |

### Fonts

### For fun

| software name | explanation                                |
| --------      | -------                                    |
| cowsay        |                                            |

## Set up things manually

As said before, due to the nature of configurations you'll have to set up a few things manually

### YAY

Follow the instructions of [yay](https://github.com/Jguer/yay), you may need `export GOPROXY="https://goproxy.cn"` to help golang download packages in China. `yay ` is very important as it saves you tons of time for installing programs from AUR.

```bash
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

| software name       | explanation            |
| ---                 | ---                    |
| google-chrome       | the Chrome browser     |
| polybar             | the bar for bspwm      |
| lf                  | terminal file browser  |
| typora              | typora markdown editor |
| delta               | terminal code diff     |
| nerd-fonts-complete | nerd fonts             |
|                     |                        |

Now go back to `src/yay.sh` and install more tools.

## More configurations

[oh-my-zsh](https://ohmyz.sh/)

```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

[ohmytmux](https://github.com/gpakosz/.tmux)

```bash
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

[natural scrolling for Linux](https://wiki.archlinux.org/title/Libinput#Via_Xorg_configuration_file), edit file `/etc/X11/xorg.conf.d/40-libinput.conf`

```
Section "InputClass"
	Identifier "touchpad"
	Driver "libinput"
	MatchIsTouchpad "on"
	Option "Tapping" "on"
	Option "NaturalScrolling" "true"
  Option "ClickMethod" "clickfinger"
EndSection
```

Now head to [Configurations](https://github.com/ahacad/Configurations) and install personal configs.
