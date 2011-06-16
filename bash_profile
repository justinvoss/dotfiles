
# sexy command prompt

export PS1="\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;37m\]\W \[\033[0m\]\u\$ "

# more colors, more better

alias ls='ls -G'

# dammit, Xcode, it's shit like this

ARCHFLAGS="-arch x86_64"

# virtualenvwrapper config

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# z - jump around

source `brew --prefix`/etc/profile.d/z.sh

