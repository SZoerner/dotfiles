# Sets reasonable OS X defaults.
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# Run ./set-defaults.sh and you'll be good to go.

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=%80

# Menu bar: show remaining battery time (on pre-10.8); hide percentage
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# General: disable the "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
# General: disable the Mac OS X Crash Reporter
defaults write com.apple.CrashReporter DialogType none

# Trackpad: enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# General: enable "natural" (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

# Increasing the window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Expanding the save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
 
# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
 
# Displaying ASCII control characters using caret notation in standard text views
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true
 
# Disabling system-wide resume
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false
 
# Disabling automatic termination of inactive apps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
 
# Saving to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
 
# Never go into computer sleep mode
systemsetup -setcomputersleep Off > /dev/null
 
# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable smart quotes and smart dashes as theyâ€™re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
###############################################################################

# Increasing sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
 
# Enabling full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
 
# Disabling press-and-hold for keys in favor of a key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
 
# Setting a blazingly fast keyboard repeat rate (ain't nobody got time fo special chars while coding!)
defaults write NSGlobalDomain KeyRepeat -int 0
 
# Setting trackpad & mouse speed to a reasonable number
defaults write -g com.apple.trackpad.scaling 2
defaults write -g com.apple.mouse.scaling 2.5

# automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true
 
# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

###############################################################################
# Screen
###############################################################################
 
# Requiring password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
 
# Enabling subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2
 
# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

###############################################################################
# Finder
###############################################################################

# Showing all filename extensions in Finder by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Showing status bar in Finder by default
defaults write com.apple.finder ShowStatusBar -bool true

# Showing hidden files in Finder by default
defaults write com.apple.finder AppleShowAllFiles YES

# Allowing text selection in Quick Look/Preview in Finder by default
defaults write com.apple.finder QLEnableTextSelection -bool true

# Displaying full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disabling the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use column view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle Clmv

# Avoiding the creation of .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disabling disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Enabling snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist


############################################################################
# Dock, Dashboard, and hot corners                                         #
############################################################################


# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you donÃ¢â‚¬â„¢t use
# the Dock to launch apps.
defaults write com.apple.dock persistent-apps -array

# Setting the icon size of Dock items to 36 pixels for optimal size/screen-realestate"
defaults write com.apple.dock tilesize -int 36

# Dock: enable magnification
defaults write com.apple.dock magnification -bool true

# Set magnification icon size to 80 pixels
defaults write com.apple.dock largesize -float 80

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# grouping windows by application"
defaults write com.apple.dock "expose-group-by-app" -bool true

# Setting Dock to auto-hide and removing the auto-hiding delay"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.3

# Run the screensaver if we're in the bottom-left hot corner.
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Dock: enable highlight hover effect for the grid view of a stack
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Dock: minimize windows into their application's icon
defaults write com.apple.dock minimize-to-application -bool true

# Dock: enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Dock: enable animation when opening applications
defaults write com.apple.dock launchanim -bool true

# General: enable Dashboard as an overlay
defaults write com.apple.dock dashboard-in-overlay -bool true

# General: automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool true

# Dock: make icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Top left screen corner → Dashboard
#defaults write com.apple.dock wvous-tl-corner -int 7
#defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner → Desktop
#defaults write com.apple.dock wvous-tr-corner -int 4
#defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner → Mission Control
#defaults write com.apple.dock wvous-bl-corner -int 2
#defaults write com.apple.dock wvous-bl-modifier -int 0

# Bottom right screen corner → Launchpad
#defaults write com.apple.dock wvous-br-corner -int 11
#defaults write com.apple.dock wvous-br-modifier -int 0


###############################################################################
# Safari & WebKit
###############################################################################

# Hiding SafariÃ¢â‚¬â„¢s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Hiding SafariÃ¢â‚¬â„¢s sidebar in Top Sites
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

# Disabling SafariÃ¢â‚¬â„¢s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enabling SafariÃ¢â‚¬â„¢s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Making SafariÃ¢â‚¬â„¢s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Removing useless icons from SafariÃ¢â‚¬â„¢s bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Allow hitting the Backspace key to go to the previous page in history
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Enabling the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true

# Adding a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Using the system-native print preview dialog in Chrome
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true


###############################################################################
# Mail
###############################################################################

# Setting email addresses to copy as 'foo@example.com' instead of 'Foo Bar <foo@example.com>' in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false


###############################################################################
# Terminal
###############################################################################

# Enabling UTF-8 ONLY in Terminal.app and setting the Pro theme by default
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"


###############################################################################
# Time Machine
###############################################################################

# Preventing Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disabling local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal


###############################################################################
# Messages                                                                    #
###############################################################################

# Disable automatic emoji substitution (i.e. use plain text smileys)
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

# Disable smart quotes as itÃ¢â‚¬â„¢s annoying for messages that contain code
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

# Disable continuous spell checking
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

###############################################################################
# Personal Additions
###############################################################################

# Disable hibernation (speeds up entering sleep mode)
sudo pmset -a hibernatemode 0

# Remove the sleep image file to save disk space
sudo rm /Private/var/vm/sleepimage
# Creating a zero-byte file insteadÃ¢â‚¬Â¦
sudo touch /Private/var/vm/sleepimage
# Ã¢â‚¬Â¦and make sure it canÃ¢â‚¬â„¢t be rewritten
sudo chflags uchg /Private/var/vm/sleepimage

# Disable the sudden motion sensor as itÃ¢â‚¬â„¢s not useful for SSDs
sudo pmset -a sms 0

# Speeding up wake from sleep to 24 hours from an hour
# http://www.cultofmac.com/221392/quick-hack-speeds-up-retina-macbooks-wake-from-sleep-os-x-tips/
sudo pmset -a standbydelay 86400

# Disable computer sleep and stop the display from shutting off
sudo pmset -a sleep 0
sudo pmset -a displaysleep 0

###############################################################################
# Transmission.app                                                            #
###############################################################################

# Use `~/Downloads/Incomplete` to store incomplete downloads
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
mkdir -p ~/Downloads/Incomplete
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Incomplete"

# Don't prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false
    

echo "Done!"
