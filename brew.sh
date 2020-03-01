#/bin/sh
xcode-select --install || echo "Xcode already installed"

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install coreutils
brew install findutils
brew install moreutils
brew install binutils
brew install diffutils

brew install python
brew install openssl
brew install bash
brew install bash-completion2
brew install sqlite
brew install dos2unix
brew install ant
brew install git
brew install jq
brew install gron
brew install csshx
brew install vim
brew install redis
brew install the_silver_searcher
brew install xmlstarlet
brew install watch
brew install tree
brew install pv

# Languages
brew install erlang
brew install elixir
brew install leiningen
brew install npm
brew install rustup
brew install lynx

brew install wget
brew install s3cmd
brew install lzop
brew install libevent
brew install maven
brew install jrnl

# Install more recent versions of some OS X tools.
brew install grep
brew install wdiff
brew install openssh
brew install screen

brew install gnu-sed
brew install gnu-tar 
brew install gnu-which 
brew install gnutls
brew install gawk
brew install curl

brew install rsync
brew install svn
brew install unzip
brew install less
brew install nano

brew install grc
brew install commonmark
brew install fpp
brew install youtube-dl
brew install shellcheck
brew install pgcli
brew install pandoc
brew install httpie

# Cask files
brew cask install $(cat Caskfile|grep -v "#")


echo "Add /usr/local/bin/bash to /etc/shells and chsh -s /usr/local/bin/bash"
