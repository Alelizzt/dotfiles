source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path to your oh-my-zsh installation.
export ZSH="/home/alelizzt/.oh-my-zsh"
export TERM="xterm-256color"

# Fix para utilizar el plugin autocompletado con root
ZSH_DISABLE_COMPFIX=true

#Manual configuration
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

SAVEHIST=1000
HISTFILE=~/.zsh_history

# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# fzf improvement https://github.com/junegunn/fzf
function fzf-lovely(){
    if [ "$1" = "h" ]; then
            fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
                    echo {} is a binary file ||
                        (bat --style=numbers --color=always {} ||
                        highlight -O ansi -l {} ||
                        coderay {} ||
                        rougify {} ||
                        cat {}) 2> /dev/null | head -500'

    else
            fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
                                echo {} is a binary file ||
                                (bat --style=numbers --color=always {} ||
                                highlight -O ansi -l {} ||
                                coderay {} ||
                                rougify {} ||
                                cat {}) 2> /dev/null | head -500'
    fi
}

plugins=(
    colorize
    git
    github
    bundler
    dotenv
    docker
    docker-compose
    debian
    systemd
    python
    minikube
    rake
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
    last-working-dir
    web-search
    extract
    history
    sudo
    tmux
    z
)

source $ZSH/oh-my-zsh.sh
source /home/alelizzt/.aliases
source /home/alelizzt/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /home/alelizzt/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
