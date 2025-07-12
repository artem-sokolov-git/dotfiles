#!/bin/bash

echo "Installing dotfiles..."

# Создать симлинки для основных dotfiles
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -sf ~/dotfiles/.zprofile ~/.zprofile
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Создать директории если нужно
mkdir -p ~/.config/git
ln -sf ~/dotfiles/config/git/ignore ~/.config/git/ignore

# VS Code настройки
mkdir -p ~/.vscode
ln -sf ~/dotfiles/vscode/argv.json ~/.vscode/argv.json

echo "✅ Dotfiles установлены!"
echo "Перезапустите терминал для применения изменений."