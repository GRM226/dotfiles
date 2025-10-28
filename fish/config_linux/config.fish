# ============================================
# Configuration Fish Shell
# ============================================

# ============================================
# ALIAS DNF (gestionnaire de paquets)
# ============================================
alias dnfi='sudo dnf install'
alias dnfu='sudo dnf update'
alias dnfr='sudo dnf remove'
alias dnfs='dnf search'

# ============================================
# ALIAS TLDR (documentation simplifiée)
# ============================================
alias t='tldr'

# ============================================
# FONCTION BATMAN (man pages colorées avec bat)
# ============================================
function batman
    env MANPAGER="sh -c 'col -bx | bat --language=man --style=plain'" MANROFFOPT="-c" man $argv
end

# ============================================
# PAGER POUR LES MAN PAGES (most)
# ============================================
# Utiliser most pour afficher les man pages en couleur
set -x MANPAGER "most"

# ============================================
# COULEURS POUR LES MAN PAGES (avec less)
# ============================================
# Si tu préfères less au lieu de most, décommente ces lignes
# set -x LESS_TERMCAP_mb (printf "\e[1;31m")     # début de clignotant (rouge)
# set -x LESS_TERMCAP_md (printf "\e[1;34m")     # début de gras (bleu)
# set -x LESS_TERMCAP_me (printf "\e[0m")        # fin de mode
# set -x LESS_TERMCAP_so (printf "\e[1;44;33m")  # début de surbrillance (jaune sur bleu)
# set -x LESS_TERMCAP_se (printf "\e[0m")        # fin de surbrillance
# set -x LESS_TERMCAP_us (printf "\e[1;32m")     # début de souligné (vert)
# set -x LESS_TERMCAP_ue (printf "\e[0m")        # fin de souligné

# ============================================
# ALIAS UTILES GÉNÉRAUX
# ============================================
# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Liste des fichiers
alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# Sécurité (demande confirmation avant suppression/écrasement)
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Raccourcis système
alias c='clear'
alias h='history'
alias ports='netstat -tulanp'

# ============================================
# ALIAS POUR LE TRAVAIL (Scor - Cybersécurité)
# ============================================
# Nmap raccourcis utiles
alias nmap-quick='nmap -F'  # Scan rapide des ports les plus courants
alias nmap-full='nmap -p-'  # Scan de tous les ports
alias nmap-os='sudo nmap -O'  # Détection de l'OS (nécessite sudo)

# ============================================
# VARIABLES D'ENVIRONNEMENT
# ============================================
# Éditeur par défaut
set -x EDITOR micro

# ============================================
# HOMEBREW (si tu l'utilises)
# ============================================
# Décommente ces lignes si tu as Homebrew installé
# eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# ============================================
# GREETING PERSONNALISÉ (message d'accueil)
# ============================================
# Désactiver le message d'accueil par défaut de fish
set fish_greeting

# Message d'accueil personnalisé
function fish_greeting
    echo "Salut grm!"
end

# ============================================
# FONCTIONS UTILES
# ============================================

# Créer un répertoire et s'y déplacer directement
function mkcd
    mkdir -p $argv
    cd $argv
end

# Extraire n'importe quelle archive
function extract
    if test -f $argv[1]
        switch $argv[1]
            case '*.tar.bz2'
                tar xjf $argv[1]
            case '*.tar.gz'
                tar xzf $argv[1]
            case '*.bz2'
                bunzip2 $argv[1]
            case '*.rar'
                unrar x $argv[1]
            case '*.gz'
                gunzip $argv[1]
            case '*.tar'
                tar xf $argv[1]
            case '*.tbz2'
                tar xjf $argv[1]
            case '*.tgz'
                tar xzf $argv[1]
            case '*.zip'
                unzip $argv[1]
            case '*.Z'
                uncompress $argv[1]
            case '*.7z'
                7z x $argv[1]
            case '*'
                echo "'$argv[1]' ne peut pas être extrait avec extract()"
        end
    else
        echo "'$argv[1]' n'est pas un fichier valide"
    end
end

# Afficher l'IP publique
function myip
    curl -s https://api.ipify.org
    echo ""
end

# Afficher l'IP locale
function localip
    ip addr show | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}'
end

# ============================================
# FIN DE LA CONFIGURATION
# ============================================

alias fix-wifi='sudo modprobe -r brcmfmac |sudo modprobe brcmfmac | sudo systemctl restart NetworkManager'
alias fix-bt='sudo systemctl restart bluetooth'
