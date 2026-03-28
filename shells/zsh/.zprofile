# ~/.config/zsh/.zprofile

# Only start graphical session on tty1
if [ "$(tty)" = "/dev/tty1" ]; then
    if [ "$SESSION_TYPE" = "x11" ]; then
        # Start X only if chosen WM isn't running
        if ! pgrep -x "$XINIT_WM" >/dev/null 2>&1; then
            startx "$HOME/.config/X11/xinitrc" -- "$XINIT_WM"
        fi
    elif [ "$SESSION_TYPE" = "wayland" ]; then
        # Placeholder: Wayland startup for future
        echo "Wayland session placeholder — no compositor started yet"
    fi
fi
