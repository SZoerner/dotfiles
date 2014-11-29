# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew Cask
brew install caskroom/cask/brew-cask
# Specify the symlink directory for homebrew cask packages
export  HOMEBREW_CASK_OPTS="--appdir=/Applications"
# Link Alfred with Cask Apps
brew cask alfred link
# tap beta versions like Chrome Canary or Sublime Text 3
brew tap caskroom/versions

# Homebrew packages:
fundamentals=(fish git node tiger-vnc tmux tree)
# code quality
quality=(jenkins sonar sonar-runner)

# Homebrew Cask packages:
# terminal apps
terminal=(iterm2 tmux-iterm2 java mackup)
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
virtualization=(synergy vagrant vagrant-bar)
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
  geektool transmission unetbootin virtualbox)

# Clojure
clojure=(datomic leiningen)

# Haskell: Haskell-Platform
brew cask install haskell-platform
## Cabal Packages: code-linting, autoformatting
cabal update && cabal install ghc-mod stylish-haskell

# Elm
brew cask install elm-platform
