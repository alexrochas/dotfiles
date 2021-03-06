# Actually my work zshel without dependecy management and with oh-my-zsh.
# # TODO remove oh-my-zsh.

source ~/Development/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle gradle
antigen bundle alexrochas/zsh-extract
antigen bundle alexrochas/zsh-vim-crtl-z
antigen bundle alexrochas/zsh-git-semantic-commits
antigen bundle alexrochas/zsh-path-environment-explorer

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# You probably will want to install powerline fonts https://github.com/powerline/fonts
antigen theme robbyrussell/oh-my-zsh themes/agnoster

# Tell antigen that you're done.
antigen apply


