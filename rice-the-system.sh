#!/bin/bash

echo ""
echo "_______  ______ _______ _     _     _      _____ __   _ _     _ _     _      _______ _______ _______ _     _  _____ "
echo "|_____| |_____/ |       |_____|     |        |   | \  | |     |  \___/       |______ |______    |    |     | |_____]"
echo "|     | |    \_ |_____  |     |     |_____ __|__ |  \_| |_____| _/   \_      ______| |______    |    |_____| |      "
echo ""
echo "                      (Generateb with https://www.askapache.com/online-tools/figlet-ascii/)"
echo ""
echo ""
echo "STARTED!"
echo ""
echo ""

echo ">>> Ensuring folders..."
    mkdir -pv ~/Backgrounds
    mkdir -pv ~/Wallpapers
    mkdir -pv ~/Scripts
    mkdir -pv ~/.config
echo ""

echo ">>> Copying images..."
    # backgrounds
    cp -r ~/Downloads/arch-linux-setup/Backgrounds/* ~/Backgrounds/

    # wallpapers
    cp -r ~/Downloads/arch-linux-setup/Wallpapers/* ~/Wallpapers/
echo ""

echo ">>> Copying scripts..."
    cp -r ~/Downloads/arch-linux-setup/Scripts/* ~/Scripts/
echo ""

echo ">>> Ricing sddm..."
    # configuration
    sudo mv /usr/lib/sddm/sddm.conf.d/default.conf /usr/lib/sddm/sddm.conf.d/default.conf.backup
    sudo cp ~/Downloads/arch-linux-setup/dotfiles/sddm/default.conf /usr/lib/sddm/sddm.conf.d/default.conf

    # theme
    sudo cp -r ~/Downloads/arch-linux-setup/dotfiles/sddm/themes/chili/* ~//usr/share/sddm/themes/
echo ""

echo ">>> Ricing console..."
    # Set terminus font
    sudo pacman -S --noconfirm --needed terminus-font
    sudo mv /etc/vconsole.conf /etc/vconsole.conf.backup
    sudo cp ~/Downloads/arch-linux-setup/dotfiles/console/vconsole.conf /etc/vconsole.conf
    setfont ter-u22n

    sudo pacman -S --noconfirm --needed micro
    sudo pacman -S --noconfirm --needed tldr
    sudo pacman -S --noconfirm --needed fastfetch
    sudo pacman -S --noconfirm --needed onefetch
    sudo pacman -S --noconfirm --needed btop
    sudo pacman -S --noconfirm --needed htop 
    sudo pacman -S --noconfirm --needed fzf 
    sudo pacman -S --noconfirm --needed yazi     
echo ""

echo ">>> Ricing bash..."
    sudo pacman -S --noconfirm --needed tree
    sudo pacman -S --noconfirm --needed eza
    sudo pacman -S --noconfirm --needed starship

    mv ~/.bashrc ~/.bashrc.backup
    cp ~/Downloads/arch-linux-setup/dotfiles/bash/.bashrc ~/.bashrc
echo ""

echo ">>> Enabling user repositories..."
    # paru
    sudo pacman -S --needed base-devel
    cd ~/Downloads
    git clone https://aur.archlinux.org/paru.git
    cd ~/Downloads/paru
    makepkg -si
    cd ~
echo ""

echo ">>> Ricing hyprland..."
    sudo pacman -S --noconfirm --needed wezterm
    sudo pacman -S --noconfirm --needed rofi-wayland
    sudo pacman -S --noconfirm --needed swww
    sudo pacman -S --noconfirm --needed waybar
    sudo pacman -S --noconfirm --needed wlogout

    #sudo pacman -S --noconfirm --needed python-pywal
    paru -S --noconfirm --needed python-pywal16
echo ""

echo ">>> Copying user configuration files..."
    # backups
    mv ~/.config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf.backup

    # dotfiles
    cp -r ~/Downloads/arch-linux-setup/dotfiles/.config/* ~/.config/
echo ""

echo ""
echo "DONE!"
echo ""