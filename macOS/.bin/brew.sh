#!/bin/bash -eu

echo "------- Start Homebrew install."

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

xargs brew install < ${LOCAL_DOTFILES_REPO}/macOS/.resources/Homebrew/brew.txt
xargs brew install --cask --force  < ${LOCAL_DOTFILES_REPO}/macOS/.resources/Homebrew/cask.txt

echo "------- Finish Homebrew install."

exit 0