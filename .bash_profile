
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export JAVA_HOME=`/usr/libexec/java_home`

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export GOROOT=/usr/local/go/
export GOPATH=$HOME/gopath
export PATH=$PATH:~/bin:$GOROOT/bin:$GOPATH/bin

export IGNOREEOF=10
