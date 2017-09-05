# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Bash history fo eva
export HISTSIZE=-1
export HISTFILESIZE=-1
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

[ -d ".local" ] && [ -f ".local/.bash_profile" ] && source ".local/.bash_profile";

export JAVA_HOME=$(/usr/libexec/java_home)

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
