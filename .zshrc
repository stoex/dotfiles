##### ALIAS
alias emacs="emacs -nw"

#### EXPORTS
export ZSH=/home/chris/.oh-my-zsh
export TERM=xterm-256color
export N_PREFIX="/usr/local/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/sources/go

#### ZSH
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git golang history-substring-search)

#### P9K
P9K_MODE="nerdfont-complete"
P9K_LEFT_PROMPT_ELEMENTS=(custom_user dir vcs)
P9K_RIGHT_PROMPT_ELEMENTS=(status node_version go_version)
P9K_GO_VERSION_PROMPT_ALWAYS_SHOW=true

user_skull() {
    echo -n "\ufb8a"
}

P9K_CUSTOM_USER="user_skull"

#### SOURCING
source $ZSH/oh-my-zsh.sh
source /home/chris/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
