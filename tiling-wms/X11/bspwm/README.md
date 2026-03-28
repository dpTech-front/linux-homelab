# bspwm Configuration

This folder contains the **bspwm window manager configuration** for my Linux home lab. It is designed to be modular, X11-friendly, and integrate cleanly with Zsh-managed session services.

---

## Included

- **`bspwmrc`** → Configs for window appearance and rules  
- **`monitor_setup.sh`** → Modular script for detecting monitors and assigning desktops

---

## Key Features

- **Multi-monitor support**: Automatically assigns desktops based on VGA/LVDS detection  
- **Clean window rules**: Floating apps, desktop assignments, and ignored windows  
- **Modular design**: Easier to maintain and adapt for other WMs or Wayland  
- **Integrated with Zsh services**: Polybar, picom, wallpaperd, and sxhkd are launched from `start_wm_services`  
- **Future-ready**: Modular scripts make Wayland adoption simple

---

## Notes

- X11 session startup is handled via `.xinitrc`  
- All WM services start only once per session via Zsh guards  
- Modular design allows easy addition of new WMs like Echinus or DWM
