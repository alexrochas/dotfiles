# Antigen
[[ -f ~/.zsh/antigen.zsh ]] && source ~/.zsh/antigen.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Quotes
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

# vim like shell
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=1

# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Default User
DEFAULT_USER="arocha"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"
# unsetopt correct
# setopt nocorrectall

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# Customize to your needs...

# Superman logo
# jp2a --fill --background=dark --term-fit ~/Pictures/watchmenLogo.jpg
#jp2a --fill --background=light --fill ~/Pictures/supermanLogo.jpeg

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Quotes
[[ -f ~/.zsh/quotes.zsh ]] && source ~/.zsh/quotes.zsh

# RVM
[[ -f ~/.zsh/rvm.zsh ]] && source ~/.zsh/rvm.zsh

# added by travis gem
[ -f /.travis/travis.sh ] && source /.travis/travis.sh

# Autojump
# [[ -f ~/.zsh/autojump.zsh ]] && source ~/.zsh/autojump.zsh

# Autojump
[[ -f ~/.zsh/z.zsh ]] && source ~/.zsh/z.zsh

# ZSH Vim Crtl-Z
[[ -f ~/.zsh/crtl-z.zsh ]] && source ~/.zsh/crtl-z.zsh

# Oracle
[[ -f ~/.zsh/oracle.zsh ]] && source ~/.zsh/oracle.zsh

# Basher
[[ -f ~/.zsh/basher.zsh ]] && source ~/.zsh/basher.zsh

# Hub https://github.com/github/hub
# [[ -f ~/.zsh/hub.zsh ]] && source ~/.zsh/hub.zsh

# Completions
[[ -f ~/.zsh/completions.zsh ]] && source ~/.zsh/completions.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/opt/ssis/bin:$PATH
# source <(kubectl completion zsh)
# source <(kompose completion zsh)
source $(dirname $(gem which colorls))/tab_complete.sh
export CHANGE_MINIKUBE_NONE_USER=true
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /.nvm/versions/node/v8.0.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /.nvm/versions/node/v8.0.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /.nvm/versions/node/v8.0.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /.nvm/versions/node/v8.0.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# export PATH=/usr/local/go/bin:$PATH
# export PATH=$PATH:~/Development/flutter/bin
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
