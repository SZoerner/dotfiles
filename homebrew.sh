################
# Installation #
################

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Specify the symlink directory for homebrew cask packages
export  HOMEBREW_CASK_OPTS="--appdir=/Applications"
# Install Homebrew Cask
brew install caskroom/cask/brew-cask

###################################
# Taps: non-standard repositories #
###################################

# Cask beta versions (e.g. Chrome Canary)
brew tap caskroom/versions
# Homebrew dupes - more recent versions of OSX out-of-the-box utilities
brew tap homebrew/dupes

# Link Alfred with Cask Apps
brew cask alfred link
# rsync file synchronisation
brew install rsync

#####################
# Homebrew packages #
#####################
# install with brew install ${package[@]}

# tig: http://blogs.atlassian.com/2013/05/git-tig/
fundamentals=(fish git tig mackup node tmux tree)
# code quality
quality=(jenkins sonar sonar-runner)
# web coding, REST APIs
web=(httpie jq pup icdiff)

# Side-by-side diffs for Mercurial (hg)
# http://ianobermiller.com/blog/2015/01/12/side-by-side-diffs-for-mercurial-hg/

##########################
# Homebrew Cask packages #
##########################
# install with brew cask install ${package[@]}

# terminal apps
terminal=(iterm2 java spectacle)
# text editors
editors=(aquamacs atom intellij-idea-ce macdown
  lighttable sublime-text3 textmate)
# browsers
browser=(firefox google-chrome)
# backup & sync
apps=(arrsync dropbox flux freefilesync freemind skype)
# git
git=(gitbox github gitter)
# mongodb
mongo=(mongodb robomongo)
# virtualization
virtualization=(virtualbox vagrant vagrant-manager)
# Data Analysis
data=(dbvisualizer graphviz gephi rstudio)
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

###########
# Clojure #
###########

clojure=(datomic leiningen)

###########
# Haskell #
###########

# Haskell platform
brew cask install haskell-platform
# Cabal Packages: code-linting, autoformatting
cabal update && cabal install ghc-mod stylish-haskell

#######
# Elm #
#######

# Elm platform
brew cask install elm-platform
