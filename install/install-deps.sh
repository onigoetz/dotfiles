
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
brew cask install google-chrome firefox mou filezilla imageoptim mysqlworkbench sourcetree cakebrew textmate atom

echo "Installing some more apps"
brew cask install apache-directory-studio fantastical cord

echo "Installing ZSH"
brew install zsh coreutils
sudo /bin/sh -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
chsh -s /usr/local/bin/zsh

echo "Installing some fonts"
/bin/sh ./fonts/install.sh

## TODO :: install Solarized Dark Terminal.app theme and set as default

echo "Installing PHP"
brew tap josegonzalez/php
brew tap homebrew/dupes

brew install php55 --without-apache --with-debug --with-fpm --with-pgsql
ln -sfv /usr/local/opt/php55/*.plist ~/Library/LaunchAgents
brew install php55-mcrypt php55-xdebug php55-xhprof

echo "Installing HHVM"
brew cask install xquartz
brew tap mcuadros/homebrew-hhvm
brew install hhvm --with-mariadb

echo "Installing Mysql"
brew install mariadb
ln -sfv /usr/local/opt/mariadb/*.plist ~/Library/LaunchAgents

echo "Installing Nginx"
#brew tap homebrew/nginx
#brew install nginx-full
brew install nginx
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents

echo "Installing Drupal Stuff"
brew install postgresql
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
brew cask install pgadmin3

echo "Installing Java versions"
brew install terminal-notifier
brew install https://raw.githubusercontent.com/entrypass/jenv/homebrew/homebrew/jenv.rb
eval "$(jenv init -)"
jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
