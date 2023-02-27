#!/bin/bash

## Functions
server_name=$(hostname)

function install_homebrew() {
    echo ""
	echo "Installing HomeBrew... "
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo ""
}

function install_core_apps() {
    echo ""
	echo "Installing Core Applications... "
    echo ""
	brew analytics off
    brew tap sambadevi/powerlevel9k
    brew update
    brew install --cask google-cloud-sdk
    brew install ansible azure-cli helm htop k9s kubernetes-cli nano rsync terraform watch wget authy stats openlens nushell copyq git
    echo ""
}

function install_oh_my_zsh() {
    echo ""
	echo "Installing oh-my-zsh... "
    echo ""
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo ""
}

function install_extras() {
    echo ""
	echo "Installing extra apps... "
	echo ""
	uname -r
    echo ""
}

function install_all() {
	install_homebrew
	install_core_apps
	install_oh_my_zsh
	install_extras
}

## Colour Variables
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

### Color Functions

ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}

## Menu
menu(){
echo -ne "
My First Menu
$(ColorGreen '1)') Install Homebrew
$(ColorGreen '2)') Install Core Apps
$(ColorGreen '3)') Install 'oh-my-zsh'
$(ColorGreen '4)') Install Extra Apps
$(ColorGreen '5)') Install Everything
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) install_homebrew ; menu ;;
	        2) install_core_apps ; menu ;;
	        3) install_oh_my_zsh ; menu ;;
	        4) install_extras ; menu ;;
	        5) install_all ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu