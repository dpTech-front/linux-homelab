# Starship Prompt Configuration

This folder contains the **Starship prompt configuration** used in my shell environment.

---

## Overview

A minimal and functional shell prompt designed to provide essential context without unnecessary clutter.

---

## Features

- Clear visual indicators for command status:
  - `➜` → success  
  - `✗` → error  
- Displays **username and hostname** for system context  
- Truncated directory path for readability  
- Lightweight and fast initialization  

---

## Design Approach

- **Minimalism** — only essential information is shown  
- **Clarity** — easy to read across different environments  
- **Consistency** — integrates with the overall Linux workflow  
- **Portability** — works across multiple systems and distributions  

---

## Dependencies

- `starship`  
- Compatible shell (Zsh, Bash, etc.)  

---

## Notes

- Loaded via shell configuration (`.zshrc`)  
- Can be extended with additional modules if needed  
- Keeps prompt responsive and visually clean  
