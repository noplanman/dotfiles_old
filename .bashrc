source ~/.bash_profile;

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi
