#!/bin/bash
cp .vimrc ~/.myvimrc
cp Back.jpg ~/Back.jpg
if [[ "$OSTYPE" == "darwin"* ]]; then
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/goinfre/anorman/Back.jpg"'
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
brew install --HEAD https://raw.githubusercontent.com/sowson/valgrind/master/valgrind.rb
