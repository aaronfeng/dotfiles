source $HOME/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle 'aaronfeng/zsh-aaronfeng'
antigen bundle 'aaronfeng/zsh-bundle-ruby'
antigen theme ys

# Tell antigen that you're done.
antigen apply
