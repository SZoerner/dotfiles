# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Terminal apps
binaries=(
  git
  iterm2
  jenkins 
  node
  python
  sonar 
  sonar-runner
  tiger-vnc
  tmux 
  tmux-iterm2
  tree
)

echo "installing terminal apps..."
brew install ${binaries[@]}

# Clojure
brew install leiningen datomic

# Z shell + enhancements
brew install zsh zsh-lovers zsh-completions zsh-syntax-highlighting zsh-history-substring-search
## oh-my-zsh
curl -L http://install.ohmyz.sh | sh


# Homebrew Cask
brew install caskroom/cask/brew-cask
# Specify the symlink directory for homebrew cask packages
export  HOMEBREW_CASK_OPTS="--appdir=/Applications"
# Link Alfred with Cask Apps
brew cask alfred link

# install beta versions like Chrome Canary or Sublime Text 3
brew tap caskroom/versions

# Homebrew Cask Packages:
coding=(
  aquamacs 
  atom 
  dash 
  intellij-idea-ce
  java 
  lightpaper 
  lighttable 
  mackup
  p4merge 
  sublime-text3 
  textmate
)
echo "installing coding apps..."
brew cask install ${coding[@]}

web=(
  arrsync 
  dropbox 
  google-chrome 
  firefox 
  flux 
  freefilesync 
  freemind
)
echo "installing web apps..."
brew cask install ${web[@]}

git=(
  gitbox 
  github 
  gitter 
  gitbucket 
  mongodb 
  robomongo 
  synergy 
  vagrant 
  vagrant-bar
)
echo "installing git apps..."
brew cask install ${git[@]}

## Data Analysis
data=(
  graphviz 
  gephi 
  rstudio 
  dbvisualizer
)
echo "installing data apps..."
brew cask install ${data[@]}

## Gaming
brew cask install steam

## Graphics / Video
video=(
  blender 
  camtasia 
  darktable 
  geektool 
  gimp 
  inkscape 
  pencil 
  skype 
  teamviewer 
  yed 
  youtube-dl 
  vlc
)
echo "installing video apps..."
brew cask install ${video[@]}

## Music
music=(
  audacity 
  itunes-volume-control 
  lilypond 
  musescore 
  sonic-pi
  spotify 
  synthesia 
  tuxguitar
)
echo "installing music apps..."
brew cask install ${music[@]}

## Productivity
productivity=(
  alfred 
  cheatsheet 
  eve 
  manager 
  the-unarchiver 
  tiddlywiki 
  teamviz

)
echo "installing productivity apps..."
brew cask install ${productivity[@]}

## Text editing
text=(
  calibre 
  gitbook 
  libreoffice 
  marked 
  scribus 
  typewriter
)
echo "installing text apps..."
brew cask install ${text[@]}

## Utilities
utilities=(
  adium 
  cakebrew 
  chicken 
  ccleaner 
  cyberduck 
  disk-inventory-x 
  ganttproject
  hipchat 
  jdownloader 
  transmission
  unetbootin
  virtualbox 
)
echo "installing utility apps..."
brew cask install ${utilities[@]}


# Haskell: Haskell-Platform
brew cask install haskell-platform
## Cabal Packages: code-linting, autoformatting
cabal update && cabal install ghc-mod stylish-haskell


# Elm
brew cask install elm-platform
