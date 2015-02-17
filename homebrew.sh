# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew dupes - more recent versions of OSX out-of-the-box utilities
brew tap homebrew/dupes
# rsync file synchronisation
brew install rsync

# Install Homebrew Cask
brew install caskroom/cask/brew-cask
# Specify the symlink directory for homebrew cask packages
export  HOMEBREW_CASK_OPTS="--appdir=/Applications"
# Link Alfred with Cask Apps
brew cask alfred link
# tap beta versions like Chrome Canary or Sublime Text 3
brew tap caskroom/versions

# Homebrew packages: install with brew install ${package[@]}
fundamentals=(fish git mackup node tmux tree)
# code quality
quality=(jenkins sonar sonar-runner)

# Homebrew Cask packages:
# terminal apps
terminal=(amethyst iterm2 java spectacle)
# text editors
editors=(aquamacs atom dash intellij-idea-ce lightpaper 
  lighttable p4merge sublime-text3 textmate)
# browsers
web=(firefox google-chrome)
# sync & backup
apps=(arrsync dropbox flux freefilesync freemind skype)
# git
git=(gitbox github gitter)
# mongodb
mongo=(mongodb robomongo)
# virtualization
virtualization=(virtualbox vagrant vagrant-manager)
# Data Analysis
data=(dbvisualizer graphviz gephi rstudio)
# Gaming
games=(league-of-legends steam)
# Graphics / Video
video=(blender camtasia darktable gimp inkscape 
  pencil teamviewer yed youtube-dl vlc)
# Music
music=(audacity itunes-volume-control lilypond 
  musescore sonic-pi spotify synthesia tuxguitar)
# Productivity
productivity=(adium cheatsheet eve ganttproject 
  hipchat manager the-unarchiver tiddlywiki teamviz)
# Text editing
text=(calibre gitbook libreoffice marked scribus typewriter)
# Utilities
utilities=(alfred boot2docker cakebrew chicken 
  ccleaner cyberduck disk-inventory-x jdownloader 
  geektool transmission unetbootin)

# Clojure
clojure=(datomic leiningen)

# Haskell: Haskell-Platform
brew cask install haskell-platform
## Cabal Packages: code-linting, autoformatting
cabal update && cabal install ghc-mod stylish-haskell

# Elm
brew cask install elm-platform
