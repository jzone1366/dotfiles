# EXPORTS
# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_COLOR='3;33'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='vim'

export LC_COLLATE=C

export GOPATH="${HOME}/Go"
export PATH="${GOPATH}/bin:${PATH}"


# Projects and stuff

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# Python Stuff
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
