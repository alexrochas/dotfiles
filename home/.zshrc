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

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell/oh-my-zsh themes/apple

# Tell antigen that you're done.
antigen apply

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

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

# empty line
echo ""

# Mensagem
echo -e "\n\"Agora é o lugar onde as perguntas descansam e as respostas crescem, nos seus próprios tempos…\"\n\n~ Jeff Foster, \"Slow Down, Friend\"\n"

echo -e "\"You either die a hero or you live long enough to see yourself become the villain.\"\n\n~ Harvey Dent\n"

echo -e "\"All those moments will be lost in time... like tears in rain... Time to die.\"\n\n~ Batty - Blade Runner(1982)\n"

echo -e "\"Então, pra que querer ter sempre razão? Não quero ter razão, Quero é ser Feliz!\"\n\n~ Ferreira Gullar\n"

echo -e "\"Most of answers you need already exist in someone else's head; find those people.\"\n\n~ Unknown\n"

echo -e "\"Não exageres o culto da verdade; não há homem que ao fim de um dia não tenha mentido com razão muitas vezes.\"\n\n~ Unknown\n"

echo -e "\"I heard a joke once: Man goes to doctor. Says he's depressed. Says life is harsh and cruel.\n\
    Says he feels all alone in a threatening world. Doctor says, \"Treatment is simple. The great clown Pagliacci is in town tonight.\n\
    Go see him. That should pick you up.\" Man bursts into tears. Says, \"But doctor... I am Pagliacci.\"\n\
    Good joke. Everybody laugh. Roll on snare drum. Curtains. \"\n\n~ Rorschach\n"

echo -e "\"Forge meaning, build identity.\"\n\n~ Andrew Solomon.\n"

echo -e "\"1º Curiosity comes first.\n2º Embrace the mess.\n3º Practice reflection.\"\n\n~Ramsey Musallam\n"

echo -e "\"Everybody is a genius. But if you judge a fish by its ability to climb a tree,\n\
    it will live its whole life believing that it is stupid.\"\n\n~Albert Einstein\n"

echo -e "\"You will give the people of Earth an ideal to strive towards.
They will race behind you, they will stumble, they will fall.
But in time, they will join you in the sun, Kal.
In time, you will help them accomplish wonders. \"\n\n ~Jor-El (Man Of Steel)\n"

echo -e "\"Inventei um ditado, que diz, ‘Coleciono vinhos ruins’.
Porque se o vinho é bom, está à disposição e a pessoa está ali, eu abrirei\"\n\n ~Ric Elias\n"

echo -e "\"[Speaking to his son] You love playing with that.
You love playing with all your stuffed animals.
You love your Mommy, your Daddy. You love your pajamas.
You love everything, don't ya? Yea. But you know what, buddy?
As you get older... some of the things you love might not seem so special anymore.
Like your Jack-in-a-Box.
Maybe you'll realize it's just a piece of tin and a stuffed animal.
And the older you get, the fewer things you really love.
And by the time you get to my age, maybe it's only one or two things.
With me, I think it's one.\"\n
~Staff Sergeant William James (Hurt Locker)"

# Fortunes
echo -e "\n"
fortune 30% debian-hints 30% brasil 40% riddles


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source $(rvm 2.3.0 do rvm env --path)

# added by travis gem
[ -f /home/alex/.travis/travis.sh ] && source /home/alex/.travis/travis.sh

fpath=(home/alex/Development/zsh-test $fpath)
. /usr/share/autojump/autojump.sh

zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
