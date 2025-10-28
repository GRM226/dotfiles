# Configuration Zsh - Mac M4
# Pour étudiant en informatique / Sécu chez Scor

# =============================================================================
# HISTORIQUE
# =============================================================================
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# =============================================================================
# COMPLÉTIONS
# =============================================================================
fpath=(/opt/homebrew/share/zsh-completions $fpath)
autoload -Uz compinit && compinit

# Complétions avancées
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  # Case insensitive
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-path
zstyle ':completion:*' menu select

# =============================================================================
# PLUGINS - ORDRE IMPORTANT
# =============================================================================
# D'abord les plugins de base
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Configuration Autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8B8B8B"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Configuration Syntax Highlighting (après le sourcing du plugin)
ZSH_HIGHLIGHT_STYLES+=(
  'command:fg=green,bold'
  'unknown-token:fg=red,bold'
  'reserved-word:fg=blue,bold'
  'alias:fg=cyan'
  'builtin:fg=yellow'
  'function:fg=magenta'
)

# =============================================================================
# KEYBINDS
# =============================================================================
bindkey "^[b" backward-word
bindkey "^[f" forward-word
bindkey "^[^?" backward-kill-word
bindkey "^F" forward-char

# =============================================================================
# ALIAS GÉNÉRAUX
# =============================================================================
alias cat="bat"
alias grep="grep --color=auto"
alias mkdir="mkdir -pv"
alias cp="cp -iv"
alias rm="rm -iv"
alias mv="mv -iv"

# Brew shortcuts
alias brewi="brew install"
alias brewu="brew uninstall"
alias brewup="brew update"

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Eza
alias ls="exa --color=auto --group-directories-first"
alias la="exa -la"
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias tree="eza --tree --level=2  --icons --git"

# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline"

# Autre
alias cl='clear'
alias la=tree


# =============================================================================
# ALIAS GIT
# =============================================================================
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline"
alias gb="git branch"
alias gco="git checkout"

# =============================================================================
# ALIAS NMAP / SÉCU (pour ton job chez Scor)
# =============================================================================
alias nmap-syn="nmap -sS"
alias nmap-udp="nmap -sU"
alias nmap-full="nmap -p- -A"
alias nmap-vuln="nmap --script vuln"
alias nmap-service="nmap -sV"
alias ssh-scan="nmap -p 22 -sV"
alias http-scan="nmap -p 80,443 -sV"

# =============================================================================
# VARIABLES D'ENVIRONNEMENT
# =============================================================================
export EDITOR="micro"
export PATH="/opt/homebrew/bin:$PATH"

# =============================================================================
# FZF (si installé)
# =============================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# =============================================================================
# DIRENV
# =============================================================================
eval "$(direnv hook zsh)"

# =============================================================================
# THEFUCK
# =============================================================================
eval "$(thefuck --alias)"

# =============================================================================
# STARSHIP PROMPT (optionnel - décommente si tu veux)
# =============================================================================
# eval "$(starship init zsh)"
