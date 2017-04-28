#als
alias ls='ls -G'
alias ll='ls -la'
alias sb='source ~/.bashrc'

deep-find () {
   find / -type f -print | xargs grep $1
}
alias df=deep-find

function find-grep () {
    find ./ -name '*.$1' | xargs grep '$2'
}
alias fg=find-grep


alias sasa='cd /Volumes/佐々木/'
alias dev='cd ~/develop'

alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gd='git diff'
alias gf='git fetch'
alias gch='git checkout'
alias gcm='git commit -m'
alias gp='git push'
alias gca='git commit --amend'

alias vu='vagrant up'
alias vs='vagrant status'

#function
function peco-lscd {
    cd "$( ls -1d */ | peco )"
}

# prompt
source ~/others/gitsub/git-prompt.sh
source ~/others/gitsub/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[35m\][\w]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
