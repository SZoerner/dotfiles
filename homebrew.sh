# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Terminal apps
binaries=(
  git
  iterm2
  node
  python
  tmux 
  tmux-iterm2
  tree
)

echo "installing terminal app..."
brew install ${binaries[@]}


brew install jenkins sonar sonar-runner
# Z shell + enhancements
brew install zsh zsh-lovers zsh-completions zsh-syntax-highlighting zsh-history-substring-search
## oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# Homebrew Cask
brew install caskroom/cask/brew-cask
## Specify the symlink directory for homebrew cask packages
export  HOMEBREW_CASK_OPTS="--appdir=/Applications"
## Link Alfred with Cask Apps
brew cask alfred link

# Homebrew Cask Packages:
## Coding
brew cask install aquamacs atom dash java lightpaper lighttable node p4merge sublime-text textmate
brew cask install gitbox github gitter gitbucket intellij-idea-ce mongodb robomongo synergy vagrant vagrant-bar
## Data Analysis
brew cask install graphviz gephi rstudio dbvisualizer
## Gaming
brew cask install steam
## Graphics / Video
brew cask install blender camtasia darktable geektool gimp inkscape pencil skype teamviewer yed youtube-dl vlc
## Music
brew cask install audacity itunes-volume-control lilypond musescore sonic-pi synthesia tuxguitar
## Productivity
brew cask install alfred cheatsheet eve manager the-unarchiver tiddlywiki teamviz
## Project Management
brew cask install ganttproject
## Text editing
brew cask install calibre gitbook libreoffice marked scribus typewriter
## Utilities
brew cask install cakebrew chicken ccleaner cyberduck disk-inventory-x virtualbox transmission
brew cask install arrsync dropbox google-chrome firefox flux freefilesync freemind
brew cask install adium hipchat jdownloader unetbootin


# Haskell: Haskell-Platform
brew cask install haskell-platform
## Cabal Packages: code-linting, autoformatting
cabal update && cabal install ghc-mod stylish-haskell

# Clojure
brew install leiningen datomic

# Elm
brew cask install elm-platform
