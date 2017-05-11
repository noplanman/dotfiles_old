# added by travis gem
# [ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"
source_me "$HOME/.travis/travis.sh"

# [ -f "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source_me "$HOME/.rvm/scripts/rvm"

# added by acme.sh
# . "$HOME/.acme.sh/acme.sh.env"
source_me "$HOME/.acme.sh/acme.sh.env"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
