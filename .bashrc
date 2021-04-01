#als
alias ls='ls -G'
alias ll='ls -la'
alias sb='source ~/.bashrc'
alias hg='history | grep '
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"

## git
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gd='git diff'
alias gf='git fetch'
alias gch='git checkout'
alias gcm='git commit -m'
alias gpl='git pull'
alias gps='git push'
alias gcma='git commit --amend'
alias fcommit='git commit --allow-empty -m "first commit"'

## vagrant
alias vu='vagrant up'
alias vs='vagrant status'
alias vss='vagrant ssh'
alias av='PASSWORD=axelmark3624'
alias vh='vagrant halt'
alias vp='vagrant provision'

## prompt
source ~/repositories/others/gitsub/git-prompt.sh
source ~/repositories/others/gitsub/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[36m\][\w]\[\033[33m\]$(__git_ps1)\[\033[00m\]\$ '
export PATH=~/.pyenv/bin:$PATH

##function
function pl {
    local dir="$( find . -maxdepth 1 -type d | sed -e 's;\./;;' | peco )"
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}
