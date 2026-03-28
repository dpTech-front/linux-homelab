# ~/.config/zsh/.zshenv

# Zsh config directory
export ZDOTDIR=$HOME/.config/zsh

# Default WM
export XINIT_WM="${XINIT_WM:-bspwm}"

# Session type (X11 now; Wayland placeholder for future)
export SESSION_TYPE="${SESSION_TYPE:-x11}"

# Guard to prevent multiple service startups per session
export WM_SERVICES_STARTED=
