# VS Code & VSCodium Configuration

This directory contains personal configuration files for Visual Studio Code and VSCodium. These settings customize the appearance, behavior, and keybindings of the editor to create a consistent and productive development environment.

## Prerequisites

Before applying these settings, please ensure you have the following installed to get the intended experience.

### Fonts

*   **[JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)**: The primary font used in the editor and terminal.

### Extensions

You can install these from the Visual Studio Code Marketplace:

*   **[One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)**: The color theme used.
*   **[Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)**: Provides icons for the file explorer.
*   **[Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)**: Used as the default formatter for several languages.

## Installation

To use these configuration files, follow the steps below:

1.  **Locate your User settings folder:** The location varies by operating system:
    *   **Windows:** `%APPDATA%\Code\User` (VS Code) or `%APPDATA%\VSCodium\User` (VSCodium)
    *   **macOS:** `$HOME/Library/Application Support/Code/User` (VS Code) or `$HOME/Library/Application Support/VSCodium/User` (VSCodium)
    *   **Linux:** `$HOME/.config/Code/User` (VS Code) or `$HOME/.config/VSCodium/User` (VSCodium)

2.  **Copy the configuration files:**
    *   Place the `settings.json` and `keybindings.json` from this directory into the `User` folder you located above. **Warning:** This will overwrite your existing configurations, so make sure to back them up if needed.

3.  **Restart the editor:**
    *   Close and reopen VS Code or VSCodium for the changes to take full effect.

## Configuration Details

### `settings.json`

This file controls the main editor settings. Here are some of the key configurations:

*   **Appearance:**
    *   **Theme:** `One Dark Pro Night Flat`
    *   **Icon Theme:** `Material Icon Theme`
    *   **Font:** `JetBrainsMono Nerd Font` with a size of `22px` for the editor and `18px` for the terminal and debug console.
*   **UI Layout:**
    *   **Activity Bar:** Positioned at the `top` for a cleaner look.
    *   **Side Bar:** Moved to the `right`.
    *   **Minimap:** Disabled to maximize editor space.
    *   **Startup Editor:** Disabled (`none`).
*   **Editor Behavior:**
    *   **Auto Save:** Enabled with a delay (`afterDelay`).
    *   **Cursor:** Smooth caret animation is enabled for a better visual experience.
*   **Default Formatters:**
    *   **HTML:** `vscode.html-language-features`
    *   **JavaScript/JSON/JSONC:** `esbenp.prettier-vscode`
    *   **CSS:** `vscode.css-language-features`
*   **Terminal:**
    *   The default profile for Windows is set to `Git Bash`.
*   **Privacy:**
    *   **Telemetry:** Disabled (`"telemetry.telemetryLevel": "False"`).

### `keybindings.json`

This file contains a comprehensive set of keybindings designed to optimize workflow and provide quick access to common commands. Given the extensive nature of the file, users are encouraged to review it to familiarize themselves with the custom shortcuts.
