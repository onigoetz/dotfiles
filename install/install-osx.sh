
# TODO check XCode installation

# TODO - command line tools for OS X : https://developer.apple.com/downloads/index.action

echo "Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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

## TODO :: install Fira Code
## TODO :: install Hyperblue.app theme and set as default

## @ Home
######################################################################

echo "Installing home apps"
brew cask install a-better-finder-rename cleanmymac dropbox skype teamviewer tower vlc brave-browser github gitkraken

# TODO  Plex media player

## @ Work
######################################################################

echo "Installing some more apps"
brew cask install apache-directory-studio

echo "Installing Java versions"
brew install terminal-notifier
brew install jenv
eval "$(jenv init -)"
jenv add `/usr/libexec/java_home -v 1.7`
jenv add `/usr/libexec/java_home -v 1.8`
jenv enable-plugin maven
jenv rehash
