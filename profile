alias lf='ls | sed "s:^:`pwd`/:" | sed "s/^/$HOSTNAME:/g"'
alias gh="cd ~/projects/github"
alias wk="cd ~/projects/work"
alias py2="cd ~/venv/py2 && source bin/activate"
alias py3="cd ~/venv/py3 && source bin/activate"

export PS1="\[\e[1;34m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\]:\[\e[1;36m\]\w\[\e[m\]\\ \$"

cat "export GOROOT=/usr/local/go" >> .zshrc
cat "export GOPATH=~/projects/go" >> .zshrc
cat "export PATH=$GOROOT/bin:$GOPATH/bin:$PATH" >> .zshrc

cat "export JAVA_HOME=/usr/local/java/jdk1.8.0_202" >> .zshrc
cat "export JRE_HOME=${JAVA_HOME}/jre" >> .zshrc
cat "export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib" >> .zshrc
cat "export PATH=${JAVA_HOME}/bin:$PATH" >> .zshrc
# ln -s /usr/local/java/jdk1.8.0_202/bin/java /usr/bin/java

export PYENV_ROOT="${HOME}/.pyenv"

#if [ -d "${PYENV_ROOT}" ]; then
#    export PATH="${PYENV_ROOT}/bin:${PATH}"
#    eval "$(pyenv init -)"
#fi
