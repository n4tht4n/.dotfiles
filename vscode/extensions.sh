#!/bin/bash

echo "Bootstraping vscode extensions..."

# this allows for speedy keyboard repetition by holding a key 😉
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# "default" extensions
code --install-extension editorconfig.editorconfig
code --install-extension esbenp.prettier-vscode
code --install-extension davidanson.vscode-markdownlint
code --install-extension yzhang.markdown-all-in-one
code --install-extension bierner.markdown-mermaid
code --install-extension wayou.vscode-todo-highlight
code --install-extension auiworks.amvim

# theme(s)
code --install-extension dracula-theme.theme-dracula
code --install-extension pkief.material-icon-theme

# webdev specific
code --install-extension dbaeumer.vscode-eslint

# Angular specific
code --install-extension alexiv.vscode-angular2-files
code --install-extension angular.ng-template
code --install-extension johnpapa.angular2
