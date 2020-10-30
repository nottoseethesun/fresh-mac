#!/bin/bash

cp .bash_profile ~/
cp .bashrc ~/

cp .zprofile ~/
cp .zshrc ~/

cp alias.sh ~/

chmod +x ~/.zprofile ~/.zshrc ~/.bash_profile ~/.bashrc ~/alias.sh
