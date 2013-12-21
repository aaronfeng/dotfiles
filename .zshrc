# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

source "`brew --prefix grc`/etc/grc.bashrc"

source "$HOME/.zsh/bundle/zundle/rc"
Bundle 'matschaffer/zsh-history'
Bundle 'matschaffer/zsh-theme-gnzh'
Bundle 'matschaffer/zsh-git'
Bundle 'aaronfeng/zsh-java-version-gnzh'
Bundle 'aaronfeng/zsh-grc'
Bundle 'aaronfeng/zsh-bundle-ruby'
Bundle 'aaronfeng/zsh-jobs'

LoadBundles
