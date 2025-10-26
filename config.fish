if status is-interactive
    # Commands to run in interactive sessions can go here

#alias brew
alias brewi="brew install"
alias brewuni="brew uninstall"
alias brewu="brew update"

#alias sherlock 
alias sherlock="python3.11 -m sherlock_project"

alias vpnoteria="sudo /opt/homebrew/sbin/openvpn --config ~/Documents/OpenVPN_config/OTERIA-OpenVPN.ovpn"

alias vpntry="sudo /opt/homebrew/sbin/openvpn --config ~/Downloads/grm22.ovpn"

# Man pages colorées avec bat
function batman
    env MANPAGER="sh -c 'col -bx | bat -l man -p'" man $argv
end

end

# Created by `pipx` on 2025-10-06 11:21:26
set PATH $PATH /Users/grm/.local/bin
