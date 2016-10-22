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

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

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

# Quotes
[[ -f ~/.zsh/quotes.zsh ]] && source ~/.zsh/quotes.zsh

# RVM
[[ -f ~/.zsh/rvm.zsh ]] && source ~/.zsh/rvm.zsh

# added by travis gem
[ -f /home/alex/.travis/travis.sh ] && source /home/alex/.travis/travis.sh

# Autojump
[[ -f ~/.zsh/autojump.zsh ]] && source ~/.zsh/autojump.zsh

# ZSH Vim Crtl-Z
[[ -f ~/.zsh/crtl-z.zsh ]] && source ~/.zsh/crtl-z.zsh

# Oracle
[[ -f ~/.zsh/oracle.zsh ]] && source ~/.zsh/oracle.zsh

# Basher
[[ -f ~/.zsh/basher.zsh ]] && source ~/.zsh/basher.zsh

