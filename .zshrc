# Tell ls to be colourful
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

source "`brew --prefix grc`/etc/grc.bashrc"

source "$HOME/.zsh/bundle/zundle/rc"
Bundle 'matschaffer/zsh-history'


# (TODO) move this to a better home
if [ "$TERM" != dumb ] && [ -n "$GRC" ]
then
    alias colourify="$GRC -es --colour=auto"
    alias ps='colourify ps'
fi
