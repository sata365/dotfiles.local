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

# zsh
[ -L ~/.zprofile.local ] && unlink ~/.zprofile.local
[ -f ~/.zprofile.local ] && cp ~/.zprofile.local ~/.dotbackup/ && rm -f ~/.zprofile.local
ln -s ${LOCAL_DOTFILES_REPO_DIR}/macOS/.resources/zsh/.zprofile.local ~/.zprofile.local
[ -L ~/.zshrc.local ] && unlink ~/.zshrc.local
[ -f ~/.zshrc.local ] && cp ~/.zshrc.local ~/.dotbackup/ && rm -f ~/.zshrc.local
ln -s ${LOCAL_DOTFILES_REPO_DIR}/macOS/.resources/zsh/.zshrc.local ~/.zshrc.local

echo "------- Finish resource file operation."
