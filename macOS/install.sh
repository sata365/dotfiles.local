#!/bin/bash -eu

echo "------- Start local configuration."

/bin/bash ${LOCAL_DOTFILES_REPO}/macOS/.bin/defaults.sh
/bin/bash ${LOCAL_DOTFILES_REPO}/macOS/.bin/resources.sh
/bin/bash ${LOCAL_DOTFILES_REPO}/macOS/.bin/brew.sh

echo "------- Finish local configuration."
