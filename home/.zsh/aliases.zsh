# Aliases
alias filemanager='pcmanfm'
alias zshconfig='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias git='nocorrect git'
alias environment='sudo vim /etc/environment'
alias sudo='sudo -E '
alias dev='cd ~/Development'
alias notebook='jupyter notebook'
alias clipboard='xsel -b'
alias ll='ls -l'
# git-explorer from https://github.com/alexrochas/git-explorer
alias lg='git-explorer explore --light'
alias docker-rm-images='docker rmi $(docker images -q)'
alias docker-rm-containers='docker rm $(docker ps -a -q)'
alias search-txt='function _search(){find ./ -type f -exec grep --color=always -Hil "$1" {} \;};_search'

