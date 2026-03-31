# sxhkd Configuration

This folder contains the **sxhkd (Simple X Hotkey Daemon)** configuration used in my Linux home lab.

It defines keyboard shortcuts for interacting with the window manager and launching applications.

---

## Overview

- Provides **keyboard-driven control** for bspwm  
- Uses **Vim-style navigation** (`h`, `j`, `k`, `l`)  
- Separates **window management, system controls, and application launching**  
- Designed for a **minimal and efficient workflow**

---

## Key Areas

### Window Management
- Focus and move windows using directional keys  
- Toggle layouts (tiled / monocle)  
- Resize and reposition windows  
- Manage floating and fullscreen states  

### Desktop Control
- Switch between desktops  
- Move windows across desktops  
- Navigate workspace history  

### Preselection
- Define window split direction before opening new windows  
- Control split ratios dynamically  

### System Controls
- Launch terminal and browser  
- Reload sxhkd configuration without restarting session  
- Restart or quit bspwm  

---

## Design Principles

- **Keyboard-first workflow**  
- **Consistency across WMs** (portable to other tiling managers)  
- **Minimal and readable keybindings**  
- **Separation of concerns** (no duplication with WM configs)

---

## Dependencies

- `sxhkd`  
- `bspwm` (or compatible window manager)  
- X11 session  

---

## Notes

- Keybindings are defined in `sxhkdrc`  
- This setup avoids redundancy by keeping logic separate from bspwm configuration  
- Can be extended for development tools, scripts, or automation workflows  
