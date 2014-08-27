
function knifetest() {
  knife "$@" -c ~/.chef/test.rb
}

PATH=$PATH:$HOME/.rvm/bin:$HOME/bin # Add RVM to PATH for scripting
export JAVA_HOME="$(/usr/libexec/java_home)"

#Ignore ctrl-d 10 times
export IGNOREEOF=10

eval "$(bob setup_completion)"
