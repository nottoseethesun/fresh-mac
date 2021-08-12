export HOME_BIN=~/bin

PATH=$PATH:$HOME_BIN
export PATH

source ~/setBrewPrefix.sh
eval "$(${brewExecutablePrefix}/bin/brew shellenv)"

# - - Begin nvm section
    export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
# - - End nvm section

export GREP_OPTIONS='--color=auto --exclude-dir=.svn' # grep 2.5.1a or >
export EDITOR=emacs

# Shell prompt customization to get a colorized prompt that is formatted like this: 'username@hostname:cwd $'
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PYTHON_INSTALL_LOC='which python3'

# Start-up Programs

. ~/.bashrc
