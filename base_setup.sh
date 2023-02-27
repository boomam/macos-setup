# /bin/bash

# Install Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Configure Homebrew ENV
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/andrewmastroianni/.zprofile\n eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off

# Add extra cask/s to Brew
brew tap sambadevi/powerlevel9k
brew update

# Install Brew apps
brew install --cask google-cloud-sdk
brew install ansible azure-cli helm htop k9s kubernetes-cli nano rsync terraform watch wget authy stats openlens nushell copyq git

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Configure oh-my-zsh

# Install Appstore Apps