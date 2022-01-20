#!/bin/bash -eu

echo "------- Start resource file operation."

# gitconfig
[ -L ~/.gitconfig_local ] && unlink ~/.gitconfig_local
[ -f ~/.gitconfig_local ] && cp ~/.gitconfig_local ~/.dotbackup/ && rm -f ~/.gitconfig_local
ln -s ${LOCAL_DOTFILES_REPO_DIR}/macOS/.resources/git/.gitconfig_local ~/.gitconfig_local

# sshconfig
<< COMMENTOUT
[ -L ~/.ssh/config ] && unlink ~/.ssh/config
[ -f ~/.ssh/config ] && cp -r ~/.ssh/config ~/.dotbackup/ && rm -f ~/.ssh/config
[ -d ~/.ssh ] || mkdir ~/.ssh && chmod 700 ~/.ssh
ln -s ${LOCAL_DOTFILES_REPO_DIR}/macOS/.resources/ssh/config ~/.ssh/config
COMMENTOUT

echo "------- Finish resource file operation."
