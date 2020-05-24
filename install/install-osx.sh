
echo "Installing Homebrew..."
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Installing Common softwares ..."
brew install curl dos2unix graphviz wget git

echo "Configuring Homebrew Cask..."
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo "Installing common applications"
brew cask install google-chrome firefox mageoptim

echo "Installing Quick Look Plugins"
brew cask install webpquicklook qlprettypatch quicklook-json qlmarkdown qlcolorcode

echo "Installing ZSH"
brew install zsh coreutils
sudo /bin/sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
chsh -s /usr/local/bin/zsh

echo "Installing Fira Code Font"
brew tap homebrew/cask-fonts
brew cask install font-fira-code

echo "Installing home apps"
brew cask install cleanmymac dropbox skype vlc brave-browser plex github zoomus slack jetbrains-toolbox spotify spotify-now-playing google-chrome

echo "=> You can now install your terminal theme"

## TODO :: install Hyperblue.app theme and set as default