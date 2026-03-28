# ~/.config/zsh/.zshenv

# Zsh config directory
export ZDOTDIR=$HOME/.config/zsh

# Detect session type
if [ -n "$WAYLAND_DISPLAY" ]; then
    export SESSION_TYPE="wayland"
else
    export SESSION_TYPE="x11"
fi

# Default window manager / compositor
export XINIT_WM="${XINIT_WM:-bspwm}"
