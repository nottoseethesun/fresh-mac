# - - - -- - - Shell-related Aliases
alias l='ls -ail'
alias x='exa --long'

alias whatlistens="lsof -iTCP -sTCP:LISTEN -n -P"

#  - - - - - - Diff
alias diffdev='git diff develop | filterdiff -p 1 -x package-lock.json'  # Prerequisite: brew install patchutils
alias diffdevf='git diff develop | filterdiff -p 1 -x package-lock.json > diffdev.diff'  # Prerequisite: brew install patchutils

# - - - - - - Node-related Aliases

alias ninsp='gscn; ./node_modules/node-inspector/bin/inspector.js &'
# alias node="env NODE_NO_READLINE=1 rlwrap -ppurple node" # Use rlwrap with the node repl and go purple.

# - - - - - - News
alias getnews='open -F "https://news.ycombinator.com"; open -F "https://hn.algolia.com/?query=typescript&sort=byPopularity&prefix&page=0&dateRange=last24h&type=story"; open -F "https://hn.algolia.com/?query=javascript&sort=byPopularity&prefix&page=0&dateRange=last24h&type=story"; open -F "https://hn.algolia.com/?query=css&sort=byPopularity&prefix&page=0&dateRange=last24h&type=story"; '

# - - - - - - Project Aliases

alias snip='cd $CURRENT_APP_ROOT; ./node_modules/node-inspector/bin/inspector.js &'
