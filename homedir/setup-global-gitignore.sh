#!/bin/bash

getignore get Global/macOS > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
