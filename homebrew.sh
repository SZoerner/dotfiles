# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Terminal apps
binaries=(
  git
  iterm2
  node
  python
  tiger-vnc
  tmux 
  tmux-iterm2
  tree
)

echo "installing terminal apps..."
brew install ${binaries[@]}

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

coding=(
  aquamacs 
  atom 
  dash 
  intellij-idea-ce
  java 
  lightpaper 
  lighttable 
  p4merge 
  sublime-text 
  textmate
)

echo "installing coding apps..."
brew cask install ${coding[@]}

brew install jenkins sonar sonar-runner

brew cask install gitbox github gitter gitbucket mongodb robomongo synergy vagrant vagrant-bar
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
utilities=(
  adium 
  hipchat 
  jdownloader 
  unetbootin
)

echo "installing utilities apps..."
brew cask install ${utilities[@]}

brew cask install cakebrew chicken ccleaner cyberduck disk-inventory-x virtualbox transmission
brew cask install arrsync dropbox google-chrome firefox flux freefilesync freemind

# Haskell: Haskell-Platform
brew cask install haskell-platform
## Cabal Packages: code-linting, autoformatting
cabal update && cabal install ghc-mod stylish-haskell

# Clojure
brew install leiningen datomic

# Elm
brew cask install elm-platform
