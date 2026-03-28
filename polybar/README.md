# Polybar Configuration

This folder contains my **modular Polybar setup** used in my Linux home lab.
It is designed to work with **multi-monitor setups** and **bspwm** as the window manager.

---

## Features

- **Multi-monitor support**:  
  - `main_bar.ini` ➔ Primary display (LVDS-1)  
  - `center_bar.ini` ➔ Secondary display (VGA-1)  
- **Workspace info**: Shows desktops and focused windows via `bspwm` module  
- **Date & Time modules**: Configurable display for system date and time  
- **Decorations & spacing**: Modular glyphs and spacing (`decor.d`)  
- **Centralized color scheme**: `color.ini` allows quick theme changes  
- **Fonts**: Hack-Regular, IPAGothic, Iosevka Nerd Font  

---

## Folder Structure

```text
polybar/
├── color.ini         # Color palette for bars
├── config.ini        # Main config that includes all other configs
├── main_bar.ini      # LVDS-1 (primary) bar
├── center_bar.ini    # VGA-1 (secondary) bar
├── decor.d/          # Spacing and glyph decorations
│   ├── glyph.ini
│   └── space.ini
└── modules.d/        # Modular Polybar modules
    ├── bspwm.ini
    ├── date.ini
    └── time.ini
```

---

## Dependencies

- `polybar` (X11 only; Wayland support TBD)  
- `bspwm` (window manager)  
- Fonts: Hack-Regular, IPAGothic, Iosevka Nerd Font  

---

## Notes

- Bars are **modular** — you can add/remove modules without touching the main config  
- Multi-monitor bars are configured per monitor using the `monitor` field in each bar file  
- Centralized colors and font settings make it easy to **maintain and theme**  
- Decorations (glyphs and spacing) are optional and reusable  
- Future enhancements: **Wayland support** and dynamic monitor detection

