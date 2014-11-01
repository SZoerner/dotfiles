# Terminal apps
brew install git jenkins iterm2 sonar sonar-runner tmux tmux-iterm2
# Z shell + enhancements
brew install zsh zsh-lovers zsh-completions zsh-syntax-highlighting zsh-history-substring-search
## oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# Homebrew Cask
brew install caskroom/cask/brew-cask
## Link Alfred with Cask Apps
brew cask alfred link

# Homebrew Cask Packages:
## Coding
brew cask install aquamacs atom dash java lightpaper lighttable node p4merge sublime-text textmate
brew cask install gitbox github gitter intellij-idea-ce synergy vagrant vagrant-bar
## Data Analysis
brew cask install rstudio dbvisualizer
## Gaming
brew cask install steam
## Graphics / Video
brew cask install blender camtasia darktable geektool gimp graphviz inkscape pencil skype teamviewer yed youtube-dl vlc
## Music
brew cask install audacity itunes-volume-control lilypond musescore synthesia tuxguitar
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
brew install leiningen

# Elm
brew cask install elm-platform
