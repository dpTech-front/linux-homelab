# bspwm Configuration

This folder contains the **bspwm window manager configuration** for my Linux home lab.  
It is modular, X11-friendly, and integrates cleanly with Zsh-managed session services.

---

## Included

- **`bspwmrc`** → Main configuration (appearance, gaps, borders, window rules)  
- **`monitor_setup.sh`** → Modular monitor detection, numeric desktop assignment, and xrandr auto-mode setup

---

## Dependencies

- `xrandr` → for monitor detection and auto-resolution setup  
- `bspwm` → tiling window manager  
- `sxhkd` → hotkey daemon (started via Zsh services)  
- `polybar` → status bars (started via Zsh services)  
- `picom` → compositor (optional, started via Zsh services)  

---

## Key Features

- **Multi-monitor support**: Automatically detects all connected monitors (VGA, LVDS, HDMI, DP, or others)  
- **Professional numeric desktops**: Desktops numbered 1–12 for clarity and consistency  
- **Dynamic assignment**: Works for 1, 2, 3+ monitors  
- **Clean window rules**: Floating apps, desktop assignments, ignored windows  
- **Modular & portable**: Monitor setup separated from bspwmrc  
- **Integrated with Zsh services**: All session services start once per login  

---

## Notes

- X11 session startup is handled via `.xinitrc`  
- All services are started via Zsh to prevent duplicate launches  
- This modular design makes future adoption of Wayland or additional WMs straightforward
