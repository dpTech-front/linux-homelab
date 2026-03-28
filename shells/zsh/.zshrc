# ~/.config/zsh/.zshrc

# ===== PATHS & ENV =====
path+=$HOME/.local/bin
path+=/home/front/main/script
export RUN_DIR=/home/front/main
export LESSHISTFILE=-
export STARSHIP_CONFIG=~/.config/starship/config.toml

# Initialize Starship prompt
eval "$(starship init zsh)"

# ===== FUNCTIONS =====
cdls() {
    local dir="${1:-$HOME}"
    if [[ -d "$dir" ]]; then
        cd "$dir" >/dev/null
        ls --color=auto
    else
        echo "bash: cdls: $dir: Directory not found"
    fi
}

# ===== ALIASES =====
alias arduino-cli="arduino-cli --config-file $XDG_CONFIG_HOME/arduino15/arduino-cli.yaml"
alias cd="cdls"
alias ls="ls --color -aAF"
alias ll="ls --color -alhAF"
alias rr="rm -rf"
alias gs="git status"
alias ga="git add"
alias grm="git rm"
alias gc="git commit -m"
alias gpush="git push"
alias gpull="git pull"
alias gi="nvim $HOME/.gitignore"
alias srczsh="source $HOME/.config/zsh/.zshrc"

# ===== WM / COMPOSITOR SERVICES =====
start_wm_services() {
    # Run only once per session
    if [[ -n "$WM_SERVICES_STARTED" ]]; then
        return
    fi

    case "$SESSION_TYPE-$XINIT_WM" in
        x11-bspwm)
            sxhkd &
            polybar -c ~/.config/polybar/config.ini center &
            polybar -c ~/.config/polybar/config.ini main &
            ;;
        x11-echinus)
            # Placeholder for Echinus X11 startup
            ;;
        x11-dwm)
            # Placeholder for DWM X11 startup
            ;;
        wayland-sway)
            # Placeholder for Wayland Sway
            ;;
        wayland-hypr)
            # Placeholder for Wayland Hyprland
            ;;
        *)
            echo "No WM/compositor services configured for $SESSION_TYPE-$XINIT_WM"
            ;;
    esac

    # Common services
    xsetroot -cursor_name left_ptr 2>/dev/null || true  # X11 only
    wallpaperd &                                       # Should support Wayland in future
    picom -b 2>/dev/null || true                       # X11 only

    export WM_SERVICES_STARTED=1
}

# Start services
start_wm_services
