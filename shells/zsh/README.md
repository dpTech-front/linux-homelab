# Zsh Configuration

This folder contains my Zsh shell environment setup, designed to be:

- **Safe for multiple terminals**  
- **WM-flexible** (bspwm, Echinus, dwm, etc.)  
- **Future-ready for Wayland**  

## Included

- `.zprofile` → Starts graphical session safely (tty1 + X11)  
- `.zshrc` → Interactive shell with aliases, functions, Starship prompt, and WM services  
- `.zshenv` → Environment variables, session type, and guard for services  
- `.xinitrc` → Simplified X11 WM launcher

## Notes

- Services are started **once per session** (`WM_SERVICES_STARTED` guard)  
- Wayland support is a placeholder for future testing  
- Part of a larger Linux home lab setup
