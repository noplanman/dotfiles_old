source_me() {
  [ -r "$1" ] && [ -f "$1" ] && source "$1"
  # echo "sourced $1"
}

source_me "$HOME/.profile"
source_me "$HOME/.bashrc"

# Load the shell dotfiles, and then some:
# * ~/.extra is used for other settings I don’t want to commit.
for file in "$HOME"/.{profile,exports,path,aliases,functions,extra}; do
  source_me "$file"
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add tab completion for many Bash commands
if which brew > /dev/null ; then
  source_me "$(brew --prefix)/share/bash-completion/bash_completion"
  source_me "$(brew --prefix)/etc/bash_completion"
else
  source_me "/etc/bash_completion"
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal" killall;
