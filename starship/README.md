<p align="center">
  <img
    width="400"
    src="https://raw.githubusercontent.com/starship/starship/master/media/logo.png"
    alt="Starship – Cross-shell prompt"
  />
</p>

<p align="center">
  <a href="https://starship.rs">Website</a>
  ·
  <a href="#installation">Installation</a>
</p>

---
## Screenshot
<p align="center">
  <img
    src="..\Screenshots\Starship-Powershell.png"
    alt="starship-powershell.png"
  />
</p>

---

<a name="installation"></a>

## Installation

> Prerequisites: A Nerd Font installed and enabled in your terminal (for example, try the JetBrainsMono Nerd Font).

### Step 01. Install Starship 

#### For Windows :
Install Starship using any of the following package managers:

| Repository      | Instructions                            |
| --------------- | --------------------------------------- |
| **[crates.io]** | `cargo install starship --locked`       |
| [Chocolatey]    | `choco install starship`                |
| [conda-forge]   | `conda install -c conda-forge starship` |
| [Scoop]         | `scoop install starship`                |
| [winget]        | `winget install --id Starship.Starship` |


#### For Arch Linux (or Arch based distros) :

Install the latest version for your system:

```sh
curl -sS https://starship.rs/install.sh | sh
```

Alternatively, install Starship using package managers:

| Repository         | Instructions         |
| ------------------ | -------------------- |
| [Arch Linux Extra] | `pacman -S starship` |

### Step 2. Set the file in create folder

Copy and paste the [starship.toml](starship.toml) file to your Starship config directory (usually `~/.config/starship.toml`).

> Windows users: "~\" is stands for "C:/Users/username/"

### Step 3. Set up your shell to use Starship

Configure your shell to initialize starship. Select yours from the list below:

<details>
<summary>Bash</summary>

Add the following to the end of `~/.bashrc` (create if not exist):

```sh
eval "$(starship init bash)"
```

</details>

<details>
<summary>Cmd</summary>

You need to use [Clink](https://chrisant996.github.io/clink/clink.html) (v1.2.30+) with Cmd.
Create a file at this path `%LocalAppData%\clink\starship.lua` with the following contents:

```lua
load(io.popen('starship init cmd'):read("*a"))()
```

</details>

<details>
<summary>PowerShell</summary>

Add the following to the end of your PowerShell configuration (find it by running `$PROFILE`):

```powershell
Invoke-Expression (&starship init powershell)
```

</details>

<details>
<summary>Zsh</summary>

Add the following to the end of `~/.zshrc`:

```sh
eval "$(starship init zsh)"
```

</details>

### Step 4. Configure Starship

Start a new shell instance and you should see your beautiful new shell prompt.
If you're happy with this config, enjoy!

> **Note:** This setup is meant for personal use and requires a [Nerd Font](https://www.nerdfonts.com/) for proper symbol display; to get the color scheme shown in the image, refer to the [Windows Terminal JSON file](https://github.com/Anshul-Padiyar/dotfiles.ap/tree/main/windows-terminal).

If you want to customize Starship further, check out the [configuration guide](https://starship.rs/config/) to tweak your prompt the way you like.



[arch linux extra]: https://archlinux.org/packages/extra/x86_64/starship
[chocolatey]: https://community.chocolatey.org/packages/starship
[conda-forge]: https://anaconda.org/conda-forge/starship
[crates.io]: https://crates.io/crates/starship
[scoop]: https://github.com/ScoopInstaller/Main/blob/master/bucket/starship.json
[winget]: https://github.com/microsoft/winget-pkgs/tree/master/manifests/s/Starship/Starship
