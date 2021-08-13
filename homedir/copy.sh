#!/bin/bash

bckp="${HOME}/.fresh-mac/backup"
mkdir -p "${bckp}"

echo Backing up any zsh/bash dot-files to "${bckp}"

[[ -e ~/.bash_profile ]] && cp ~/.bash_profile "$bckp/"
[[ -e ~/.bashrc ]] && cp ~/.bashrc "$bckp/"
[[ -e ~/.zshrc ]] && cp ~/.zshrc "${bckp}/"
[[ -e ~/.zprofile ]] && ~/.zprofile "$bckp/"
[[ -e ~/alias.sh ]] && cp ~/alias.sh "$bckp/"

cp .bash_profile ~/
cp .bashrc ~/

cp .zprofile ~/
cp .zshrc ~/

cp alias.sh ~/
cp ../util/setBrewPrefix.sh ~/

chmod +x ~/.zprofile ~/.zshrc ~/.bash_profile ~/.bashrc ~/alias.sh ~/setBrewPrefix.sh
