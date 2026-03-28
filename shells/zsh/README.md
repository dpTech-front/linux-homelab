# Zsh Configuration

This folder contains my **Zsh shell environment** for the Linux home lab. It is designed to be:

- **Safe for multiple terminals**  
- **WM-flexible** (bspwm, Echinus, dwm on X11; placeholders for Wayland compositors)  
- **Future-ready** for Wayland testing  

---

## Included

- **`.zprofile`** → Handles **graphical session startup** safely, with a tty1 check and X11/Wayland session detection  
- **`.zshrc`** → Interactive shell with:
  - Aliases and functions for navigation, Git, Arduino CLI
  - WM/compositor service management (`start_wm_services`)
  - Starship prompt initialization
- **`.zshenv`** → Environment variables, session type detection, and guard (`WM_SERVICES_STARTED`) to prevent multiple service launches per session

---

## Key Features

- **Single service startup per session**: Prevents launching polybar, picom, wallpaperd, or sxhkd multiple times when opening new terminals  
- **WM-agnostic**: Supports multiple WMs on X11 and placeholders for Wayland  
- **Portable and modular**: Works across Linux systems, easy to extend for new WMs or compositors  
- **Workflow-friendly**: Functions and aliases streamline development, embedded systems, and robotics tasks  

---

## Notes

- X11 WMs are started via `.xinitrc`; all session services are launched by Zsh to avoid multiple instances  
- Wayland support is currently a **placeholder** for future testing  
- Part of a larger **Linux home lab repo**; see the main repo README for general overview
