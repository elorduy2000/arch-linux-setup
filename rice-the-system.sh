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

echo ">>> Copying config files..."
    # backgrounds
    cp -r ~/Downloads/arch-linux-setup/Backgrounds/* ~/Backgrounds/

    # wallpapers
    cp -r ~/Downloads/arch-linux-setup/Wallpapers/* ~/Wallpapers/

    # bash
    mv ~/.bashrc ~/.bashrc.backup
    cp ~/Downloads/arch-linux-setup/dotfiles/bash/.bashrc ~/.bashrc

    # dotfiles
    cp -r ~/Downloads/arch-linux-setup/.config/* ~/.config/
echo ""

echo ">>> Configurando bash..."

echo ""

echo ">>> Changing console font..."
    sudo pacman -S --noconfirm --needed terminus-font
    sudo mv /etc/vconsole.conf /etc/vconsole.conf.backup
    sudo cp ~/Downloads/arch-linux-setup/dotfiles/console/vconsole.conf /etc/vconsole.conf
    setfont ter-u22n
echo ""

echo ">>> Installing programs..."
    sudo pacman -S --noconfirm --needed tree
    sudo pacman -S --noconfirm --needed eza
    sudo pacman -S --noconfirm --needed btop
    sudo pacman -S --noconfirm --needed htop 
    sudo pacman -S --noconfirm --needed fzf 
    sudo pacman -S --noconfirm --needed yazi 
    sudo pacman -S --noconfirm --needed starship
    sudo pacman -S --noconfirm --needed kitty
echo ""

echo ""
echo "DONE!"
echo ""