
# WezTerm Config – dotfiles.ap

![WezTerm](https://img.shields.io/badge/Terminal-WezTerm-blue?style=flat-square)

---

## Intro
This folder contains my personal **WezTerm configuration**. It is simple, minimal and made for a smooth terminal experience across **Windows & Linux**.  

I use custom color schemes and some handy tweaks to keep my terminal setup clean and distraction-free.

---

## Color Schemes
Currently included:

- `lazywave-ap` → Inspired by LazyVim default  
- `midnight-ap` → Dark & calm look  
- `nordic-ap` → Nord theme inspired  
- `tokyo-ap` → Tokyo Night dark theme  

*(Screenshots will be added later)*

---

## Installation

### 1. Clone this repo
```bash
git clone https://github.com/Anshul-Padiyar/dotfiles.ap.git

cd dotfiles.ap/wezterm
````

### 2. Symlink or copy config

Copy the `wezterm.lua` and color schemes to your WezTerm config path.

* **Linux / macOS**

  ```bash
  # create a symlink for main wezterm config
  ln -s ~/dotfiles.ap/wezterm/.wezterm.lua ~/.wezterm.lua

  # create a symlink for custom color schemes
  ln -s ~/dotfiles.ap/wezterm/.wezterm-colors ~/.wezterm-colors
  ```

* **Windows (PowerShell)**

  ```powershell
  # create a symlink for main wezterm config
  New-Item -ItemType SymbolicLink -Path $HOME\.wezterm.lua -Target $HOME\dotfiles.ap\wezterm\.wezterm.lua

  # create a symlink for custom color schemes folder
  New-Item -ItemType SymbolicLink -Path $HOME\.wezterm-colors -Target $HOME\dotfiles.ap\wezterm\.wezterm-colors
  ```

---

## Folder Structure

```
~/
│── .wezterm.lua          # main wezterm config
│── .wezterm-colors/      # custom themes
│    ├── lazywave-ap.lua
│    ├── midnight-ap.lua
│    ├── nordic-ap.lua
│    └── tokyo-ap.lua
│── README.md             # this file
```

---

## Usage

### Switch theme

Open `.wezterm.lua` and change:

```lua
local current_theme = "midnight"  -- or lazywave, nordic, tokyo
```

### Reload config

* Press `CTRL + SHIFT + R` inside WezTerm to reload instantly.
* Or restart WezTerm.

---

<!-- 
## Screenshots / Previews

*(To be added later – previews of each theme here)*

---  -->

That’s it! Now your WezTerm looks minimal, stylish, and cross-platform.
>If you like this setup, feel free to star ⭐ my repo and use it for your own dotfiles.
