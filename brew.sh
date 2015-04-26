# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install cask
brew install caskroom/cask/brew-cask

# Update homebrew recipes
#brew update
#brew upgrade

brew tap homebrew/dupes
brew tap homebrew/versions
brew tap caskroom/versions
#brew tap caskroom/fonts

brew install coreutils
brew install findutils
brew install moreutils
brew install binutils
brew install diffutils

brew install python
brew install openssl
brew install bash bash-completion2
echo "Add /usr/local/bin/bash to /etc/shells and chsh -s /usr/local/bin/bash"
brew install mysql libxml2 ant git
brew install jq ag xmlstarlet the_silver_searcher
brew install watch tree pv
brew install elixir leiningen rust
brew install lynx

# Install `wget` with IRI support.
brew install wget --with-iri

brew install s3cmd
brew install protobuf
brew install lzop
brew install libevent
brew install play22
brew install maven32

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install grep --with-default-names
brew install wdiff --with-gettext
brew install openssh
brew install screen

brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls --with-default-names
brew install gawk --with-default-names
brew install curl --with-default-names

brew install rsync 
brew install svn
brew install unzip
brew install eess

brew install grc

# Cask files
brew cask install $(cat Caskfile|grep -v "#")

