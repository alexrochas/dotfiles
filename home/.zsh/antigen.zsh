# Actually my work zshel without dependecy management and with oh-my-zsh.
# # TODO remove oh-my-zsh.

source /home/alex/Development/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
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
antigen theme robbyrussell/oh-my-zsh themes/apple

# Tell antigen that you're done.
antigen apply


