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
# --- Source plugins --- #
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
# --- Source plugins --- #

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

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Eza
alias ls="eza --color=auto --group-directories-first"
alias la="eza -la"
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias tree="eza --tree --level=2  --icons --git"

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
# ALIAS LINUX
# =============================================================================
#Arch
alias install="sudo pacman -S"

#Redhat
alias dnfi="sudo dnf install"

#Debian
alias apti="sudo apt get"

# =============================================================================
# ALIAS MACOS
# =============================================================================
# Brew shortcuts
alias brewi="brew install"
alias brewu="brew uninstall"
alias brewup="brew update"

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
