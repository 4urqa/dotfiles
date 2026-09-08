#     _            _
#  __| |_ _  _ _ _| |____ _
# / _| ' \ || | '_| / / _` |
# \__|_||_\_,_|_| |_\_\__,_|
#
# made by 4urqa

# NOTE: there is no installing for it, clone repository to .local/share 
# or any other directory
source "/home/tima/.local/share/zinit/zinit.zsh"

# History #
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

# Sorting #
setopt AUTO_CD
setopt GLOB_DOTS
setopt NO_BEEP
setopt NO_CASE_GLOB
setopt NUMERIC_GLOB_SORT

# Plugins #
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
#zinit ice depth=1; zinit light romkatv/powerlevel10k

ZSH_AUTOSUGGEST_MANUAL_REBIND=1
ZSH_AUTOSUGGEST_USE_ASYNC=1

zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

zinit wait'1' lucid for \
    OMZL::directories.zsh \
    OMZP::colored-man-pages \
    OMZP::command-not-found

# PATH #
export PATH=~/.dotnet/tools:$PATH
export PATH=$PATH:/home/tima/.spicetify
export PATH=~/.local/bin:$PATH

# Integrations #
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Aliases #
alias grep='grep --color=auto'
alias ls='exa --color=always --icons=always'
alias la='exa -a --color=always --icons=always'
alias ll='exa -la --color=always --icons=always'
alias c='clear'
alias i='paru -S'
alias f='paru -Ss'
alias rn='sudo pacman -Rns'

alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'

# Variables #
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'
export LESS='-R'

# Autocompletion
autoload -Uz compinit
compinit -C 

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Misc #
unsetopt CORRECT
unsetopt CORRECT_ALL
KEYTIMEOUT=1
