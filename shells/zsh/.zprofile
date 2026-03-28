# ~/.config/zsh/.zprofile
# Automatically start X session on tty1 with chosen WM

if [ "$(tty)" = "/dev/tty1" ]; then
    # Only start X if no X session is running
    if ! pgrep -x Xorg >/dev/null 2>&1; then
        # Define default WM (can be overridden)
        XINIT_WM="${XINIT_WM:-bspwm}"

        # Start X session using your xinitrc
        startx "$HOME/.config/X11/xinitrc" -- "$XINIT_WM"
    fi
fi
