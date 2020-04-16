# Git
 
fpath=(~/.zsh $fpath)
 
if [ -f ${HOME}/.zsh/git-completion.zsh ]; then
        zstyle ':completion:*:*:git:*' script ~/repositories/others/.zsh/git-completion.zsh
fi
 
if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
        source ${HOME}/repositories/others/.zsh/git-prompt.sh
fi
 
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
 
#setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
#setopt PROMPT_SUBST ; PS1='[%~]$(__git_ps1 "(%s)")\$ '
setopt PROMPT_SUBST ; PS1='%F{blue}[%~]%F{yellow}$(__git_ps1 " (%s)")\$ %F{white}'

## 設定方法
# %{$fg[色番号]%} と %{$reset_color%}
#(bash)
#export PS1='\[\e[34m\]\@ \[\e[33m\]\u@\h \[\e[32m\]\w\e[0m\n\$ '
#(zsh)
#PROMPT='%F{blue}%t%f %F{yellow}%n@%m%f %F{green}%~%f

#als
alias ls='ls -G'
alias ll='ls -la'
alias sb='source ~/.bashrc'
alias hg='history | grep '
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"

## git
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gd='git diff'
alias gf='git fetch'
alias gch='git checkout'
alias gcm='git commit -m'
alias gp='git push'
alias gca='git commit --amend'
alias gdo='git diff origin/master..HEAD'
alias fcommit='git commit --allow-empty -m "first commit"'

## vagrant
alias vu='vagrant up'
alias vs='vagrant status'
alias vss='vagrant ssh'
alias av='PASSWORD=axelmark3624'
alias vh='vagrant halt'
alias vp='vagrant provision'

#function
function pl {
    cd "$( ls -1d */ | peco )"
}
