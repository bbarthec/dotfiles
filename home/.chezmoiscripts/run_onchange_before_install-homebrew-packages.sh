#!/bin/bash

# I do not use `Brewfile`, but istead I construct it dynamically here.
# It's like this, because `chezmoi` scripts keep tracks of changes in
# the scripting file and not in the `Brewfile`.
# @see https://github.com/twpayne/chezmoi/issues/401

set -eufo pipefail

brew bundle --file=/dev/stdin <<EOF

# Taps

tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"
tap "homebrew/cask-fonts"
tap "adoptopenjdk/openjdk"

# Fonts

cask "font-fira-code"

# Development

brew "bash"
brew "chezmoi"
brew "direnv"
brew "git"
brew "git-crypt"
brew "git-lfs"
brew "gnupg"
brew "htop"
brew "mas"
brew "node"
brew "python@3.10"
brew "ruby@2.7"
brew "scrcpy"
brew "shellcheck"
brew "swiftlint"
brew "tree"
brew "watchman"
brew "zsh"
cask "adoptopenjdk11"
cask "android-sdk"
cask "android-studio"
cask "iterm2"
cask "visual-studio-code"

# Apps

cask "discord"
cask "Google Chrome"
cask "Microsft Edge"
cask "Microsoft Excel"
cask "Microsoft Outlook"
cask "Microsoft Word"
cask "rectangle"
cask "Slack"
cask "Spotify"

# Mac App Store

mas "Harvest", id: 506189836
mas "Microsoft To Do", id: 1274495053
mas "OneDrive", id: 823766827
mas "Xcode", id: 497799835

EOF