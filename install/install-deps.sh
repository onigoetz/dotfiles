
# TODO check XCode installation

# TODO - command line tools for OS X : https://developer.apple.com/downloads/index.action

echo "Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Common softwares ..."
brew install curl dos2unix graphviz mercurial node wget git

echo "Installing Homebrew Cask..."
brew install caskroom/cask/brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo "Installing common applications"
brew cask install google-chrome firefox mou filezilla imageoptim mysqlworkbench sourcetree cakebrew textmate

echo "Installing Quick Look Plugins"
brew cask install webpquicklook qlimagesize qlprettypatch quicklook-json qlmarkdown qlcolorcode

echo "Installing ZSH"
brew install zsh coreutils zsh-syntax-highlighting
sudo /bin/sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
chsh -s /usr/local/bin/zsh

echo "Installing some fonts"
/bin/sh ./fonts/install.sh

## TODO :: install Solarized Dark Terminal.app theme and set as default

echo "Installing PHP"
brew tap josegonzalez/php
brew tap homebrew/dupes

#brew install php56 --without-apache --with-debug --with-fpm --with-postgresql
#ln -sfv /usr/local/opt/php56/*.plist ~/Library/LaunchAgents
#brew install php56-mcrypt php56-xdebug php56-xhprof

echo "Installing Mysql"
brew install mariadb
ln -sfv /usr/local/opt/mariadb/*.plist ~/Library/LaunchAgents

## @ Home
######################################################################

echo "Installing home apps"
brew cask install a-better-finder-rename calibre cleanmymac dropbox hubic skype teamviewer tower transmit vlc

# Plex media player
#

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
