#alias
alias ls='ls -G'
alias ll='ls -la'
alias sb='source ~/.bashrc'

alias dev='cd ~/develop'

alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gd='git diff'
alias gf='git fetch'
alias gch='git checkout'
alias gcm='git commit -m'
alias gp='git push'

alias vu='vagrant up'
alias vs='vagrant status'

#function
function peco-lscd {
    cd "$( ls -1d */ | peco )"
}

# prompt
source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[35m\][\w]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
