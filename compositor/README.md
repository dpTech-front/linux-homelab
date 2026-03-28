# Picom / Compositor Configuration

This folder contains the **Picom compositor configuration** used in my Linux home lab.

---

## Features

- **Shadows**: Enabled with optional exclusion rules for docks, desktops, and notifications  
- **Fading**: Disabled (can be enabled by uncommenting fade settings)  
- **Transparency / Opacity**:  
  - Inactive windows at 0.8 opacity  
  - Frame opacity 0.7  
  - Focused window opacity rules for terminal (`st-256color`)  
- **Corners**: No rounded corners by default, excludes docks and desktops  
- **Background blurring**: Disabled, can be enabled later  
- **General settings**:  
  - Backend: `xrender`  
  - VSync: disabled  
  - Detects transient and client-leader windows  
  - Logging level: `warn`  

---

## Wintypes

- `tooltip` → shadow + fade + opacity 0.75  
- `dock` → no shadow  
- `dnd` → no shadow  
- `popup_menu` & `dropdown_menu` → opacity 0.8  

---

## Dependencies

- `picom` (formerly `compton`)  
- X11 session (currently, no Wayland support yet)  

---

## Notes

- This configuration is compatible with **bspwm** and other X11 tiling WMs.  
- Future enhancements can enable **fading**, **rounded corners**, or **blur**.  
