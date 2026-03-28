# ~/.config/zsh/.zprofile

# Only start graphical session on tty1
if [ "$(tty)" = "/dev/tty1" ]; then
    if [ "$SESSION_TYPE" = "x11" ]; then
        if ! pgrep -x Xorg >/dev/null 2>&1; then
            startx "$HOME/.config/X11/xinitrc" -- "$XINIT_WM"
        fi
    elif [ "$SESSION_TYPE" = "wayland" ]; then
        # Wayland compositors generally start directly from login manager or tty
        echo "Wayland session detected; start your compositor manually or via login manager"
    fi
fi
