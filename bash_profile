
# add a user-specific folder to the PATH

export PATH=$PATH:~/bin

# add some Git branch info

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

# sexy command prompt

export PS1="\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;37m\]\W \[\033[0;36m\]\$(parse_git_branch)\[\033[0m\]\n\$ "

# more colors, more better

alias ls='ls -G'

# dammit, Xcode, it's shit like this

ARCHFLAGS="-arch i386 x86_64"

# virtualenvwrapper config

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# z - jump around

source `brew --prefix`/etc/profile.d/z.sh

