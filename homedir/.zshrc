. ~/alias.sh

# Shell prompt customization to get a colorized prompt that is formatted like this: 'username@hostname:cwd $'
export PROMPT='%F{yellow}%n@%F{magenta}%m %F{green}%1~ %# '

# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
