# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"
# echo $PATH | tr ':' '\n'


autoload -U compinit
compinit

setopt auto_cd

hash -d homes=/home/kudos/projects/homes/

setopt auto_pushd

setopt pushd_ignore_dups

setopt extended_glob

setopt hist_ignore_all_dups

setopt hist_ignore_space

zstyle ':completion:*:default' menu select=1

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

autoload -Uz colors
colors

bindkey -e

#FIGNORE
export FIGNORE=".svn:.git"

#LS COLORS
export LS_COLORS='no=00:fi=00:di=01;34;47:ln=01;36:pi=40;33:so=01;36:do=01;36:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.svgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:';

alias ...='cd ../..'
alias ....='cd ../../..'

alias rm='rm -i'
alias ls='ls -al'
alias rmb="rm ./*~"
alias grep="grep --color"
alias rspec="rspec -cfs"

alias e="emacs"
alias e.="emacs ."

alias g="git"
alias gs="git status"
alias gch="git checkout"
alias gb="git branch"
alias gl="git log --name-status"
alias gdf="git diff"
alias gsh="git stash"
alias gp="git pull origin develop"
alias sz="source ~/.zshrc"
alias gr="git rebase -i origin/develop"

alias ff="find ./ -type f -name"
alias fd="find ./ -type d -name"
alias f="find ./ -type f -name '*' | xargs grep"
alias fphp="find ./ -type f -name '*php' | xargs grep"
alias fyml="find ./ -type f -name '*yml' | xargs grep"
alias fjs="find ./ -type f -name '*js' | xargs grep"
alias ftwig="find ./ -type f -name '*twig' | xargs grep"
alias fspec="find ./ -type f -name '*spec.rb' | xargs grep"
alias fnospec="find ./ -type f -not -name '*spec.rb' | xargs grep"
alias page="e php_include/src/Search/SpBundle/Resources/config/page.yml"

#emacs
alias em="emacsclient -nw -a ''"
alias killemacs="emacsclient -e '(kill-emacs)'"
export EDITOR="emacsclient -nw -a ''"


#zsh-completion
#zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
#getopt prompt_subst

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


#if [ $SHLVL = 1 ]; then
#    alias tmux="tmux -2 attach || tmux -2 tmux.conf \; source-file ~/dotfiles/tmux.conf"

#export AWS_PROFILE=homes-prod
export AWS_PROFILE=homes-dev
#export AWS_PROFILE=ai-dev
export AWS_REGION=ap-northeast-1

# homes-dev
#export AWS_DEFAULT_PROFILE=homes-dev
#export AWS_ID=692179382872
#export AWS_VPC=vpc-726f001b
#export CONFIG_DIR=homes-dev

export PATH="/usr/local/bin/keelctl:$PATH"

export PATH="./node_modules/.bin:$PATH"



export PATH="/usr/local/bin/docker:$PATH"

export PATH="$PATH:/usr/local/go/bin"

typeset -U PATH
eval "$(direnv hook zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH="./Library/Python/3.9/bin:$PATH"

COMPOSE_BAKE=true

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/kudos/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

export PATH="/usr/local/opt/ruby/bin:$PATH"export PATH="$HOME/.volta/bin:$PATH"

export PATH="$HOME/Projects/git-encrypt-kms:$PATH"
# Google Cloud SDK
export PATH="/usr/local/share/google-cloud-sdk/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"




export CURL_CA_BUNDLE="/Library/Application Support/Netskope/STAgent/data/nscacert_combined.pem"
export REQUESTS_CA_BUNDLE="/Library/Application Support/Netskope/STAgent/data/nscacert_combined.pem"
export NODE_EXTRA_CA_CERTS="/Library/Application Support/Netskope/STAgent/data/nscacert_combined.pem"
export SSL_CERT_FILE="/Library/Application Support/Netskope/STAgent/data/nscacert_combined.pem"
export PATH="$HOME/.local/bin:$PATH"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


alias kiro='kiro-cli chat --trust-all-tools --model claude-opus-4.6'


[[ -f "$HOME/.secrets" ]] && source "$HOME/.secrets"
