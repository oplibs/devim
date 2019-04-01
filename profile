alias lf='ls | sed "s:^:`pwd`/:" | sed "s/^/$HOSTNAME:/g"'
alias gh="cd ~/projects/github"
alias wk="cd ~/projects/work"
alias py2="cd ~/venv/py2 && source bin/activate"
alias py3="cd ~/venv/py3 && source bin/activate"

export PS1="\[\e[1;34m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\]:\[\e[1;36m\]\w\[\e[m\]\\ \$"

export GOROOT=/usr/local/go
export GOPATH=~/projects/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

export PYENV_ROOT="${HOME}/.pyenv"

#if [ -d "${PYENV_ROOT}" ]; then
#    export PATH="${PYENV_ROOT}/bin:${PATH}"
#    eval "$(pyenv init -)"
#fi
