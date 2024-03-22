## git prompt
# https://qiita.com/mikan3rd/items/d41a8ca26523f950ea9d

source ~/repositories/others/zsh_gitsub/git-prompt.sh

fpath=(~/repositories/others/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/repositories/others/zsh_gitsub/git-completion.zsh
autoload -Uz compinit && compinit

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%F{magenta}[%~]%F{yellow}$(__git_ps1 " (%s)")\$ %F{white}'

## 設定方法
## %{$fg[色番号]%} と %{$reset_color%}
#(bash)
#export PS1='\[\e[34m\]\@ \[\e[33m\]\u@\h \[\e[32m\]\w\e[0m\n\$ '
#(zsh)
#PROMPT='%F{blue}%t%f %F{yellow}%n@%m%f %F{green}%~%f
##

#als
alias ls='ls -G'
alias ll='ls -la'
alias sb='source ~/.zshrc'
alias hg='history | grep '
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"
alias less='less -N'

## git
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gd='git diff'
alias gf='git fetch'
alias gch='git checkout'
alias gsw='git switch'
alias gcm='git commit -m'
alias gpl='git pull'
alias gps='git push'
alias gcma='git commit --amend'
alias gdo='git diff origin/master..HEAD'
alias fcommit='git commit --allow-empty -m "first commit"'

#function
function pl {
    local dir="$( find . -maxdepth 1 -type d | sed -e 's;\./;;' | peco )"
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}
