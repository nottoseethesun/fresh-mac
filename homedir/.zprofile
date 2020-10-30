export HOME_BIN=~/bin

PATH=$PATH:$HOME_BIN
export PATH

# - - Begin nvm section
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
# - - End nvm section

export GREP_OPTIONS='--color=auto --exclude-dir=.svn' # grep 2.5.1a or >
export EDITOR=emacs

export PYTHON_INSTALL_LOC='which python3'

# Start-up Programs

. ~/.zshrc
