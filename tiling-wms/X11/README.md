# X11 Window Manager Configurations

This folder contains **all X11-related configurations** for my Linux home lab. It is designed to be modular, portable, and easy to extend to multiple tiling window managers (WMs).

---

## Included

- **`xinitrc`** → Simplified launcher for the chosen X11 WM. It **execs only the WM**, while session services (polybar, picom, sxhkd, wallpaperd) are handled via Zsh.  
- **`bspwm/`** → Configs for bspwm, including keybindings, polybar, sxhkd scripts.  
- **`dwm/`** → Configs for dwm, including patches and status bar setup.  
- **`echinus/`** → Configs for Echinus WM (currently used or in testing phase).  

---

## Key Features

- **Single entry point for X11** via `xinitrc`  
- **Modular WM configs**: each WM has its own folder, making it easy to add new WMs or modify existing ones  
- **WM services handled in Zsh**: prevents multiple launches and keeps X11 startup clean  
- **Portable**: all configurations can be reused across Linux systems  

---

## Notes

- `xinitrc` should **not contain service scripts** — those are started by Zsh for flexibility and WM-agnostic handling.  
- Wayland sessions are **not included here**; placeholders exist in the Zsh configs for future testing.  
- This folder is part of the larger **Linux home lab repository**; see the main README for overview.
