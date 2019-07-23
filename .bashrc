#ENVIRONMENT=staging

#als
alias ls='ls -G'
alias ll='ls -la'
alias sb='source ~/.bashrc'
alias hg='history | grep '
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"


#function all-find-grep () {
#    find . -type f | xargs grep -n "$1"
#}
#alias afg=all-find-grep

#function find-grep () {
#    find . -type f | grep .php$ | xargs grep -n "$1"
#}
#alias fg=find-grep

#alias sasa='cd /Volumes/佐々木/'
#alias dev='cd ~/develop/adroute/'
#alias dev7='cd ~/develop/adroute/bitbucket.org/axm-group/'
#alias devm='cd ~/develop/adroute/bitbucket.org/axm-sasaki/'
#alias adroute='cd ~/develop/new_adroute/'


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
#function peco-lscd {
#    cd "$( ls -1d */ | peco )"
#}

## prompt
source ~/repositories/others/gitsub/git-prompt.sh
source ~/repositories/others/gitsub/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[36m\][\w]\[\033[33m\]$(__git_ps1)\[\033[00m\]\$ '
export PATH=~/.pyenv/bin:$PATH
