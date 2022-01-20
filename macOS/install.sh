#!/bin/bash -eu

echo "------- Start local configuration."

/bin/bash ${LOCAL_DOTFILES_REPO_DIR}/macOS/.bin/defaults.sh
/bin/bash ${LOCAL_DOTFILES_REPO_DIR}/macOS/.bin/resources.sh
/bin/bash ${LOCAL_DOTFILES_REPO_DIR}/macOS/.bin/brew.sh

echo "------- Finish local configuration."
