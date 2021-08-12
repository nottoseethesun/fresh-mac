#!/bin/bash

# Deprecated /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

source ../util/setBrewPrefix.sh

echo fresh-mac: Setting the brew prefix used by fresh-mac to ${brewPrefix}
echo fresh-mac: Setting the brew executable prefix used by fresh-mac to ${brewExecutablePrefix}

"${brewExecutablePrefix}/bin/brew" bundle install

sudo chmod -R 755 /usr/local/share/ # https://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories

# Package-specific
sudo ln -sfn "${brewPrefix}/openjdk/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk

