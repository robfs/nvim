# VS Code to Neovim

## What is it?

This is just my personal neovim setup but in case you have found it and think it might be useful, I have documented the plugins incuded and how I am using it to learn Neovim having mostly used traditional modern editors like VS Code and PyCharm. 

## Credit

All credit for this setup goes to [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim.git) and [kickstart-modular](https://github.com/dam9000/kickstart-modular.nvim.git). I preferred the modular version but they are both the same. 

Adapting the kickstart is itself a great way to learn Neovim so if you like the additional plugins I would recommend manually updating the original kickstart rather than just forking this repo.

## Resources

* [The kickstart video](https://www.youtube.com/watch?v=m8C0Cq9Uv9o) is a great resource to walk you through it.
* [TJ's channel](https://www.youtube.com/@teej_dv) has loads of great content to help learn your way around Neovim.
* [Omer's channel](https://www.youtube.com/@devopstoolbox) has great intros and reviews to plugins.
  * Omer's [dotfiles](https://github.com/omerxx/dotfiles.git) repo contains his [Neovim](https://github.com/omerxx/dotfiles/tree/master/nvim) setup and is where I saw a lot of the plusings I have added.

## Plugins

Each plugin is classified as one of:

* **Setup** - general plugins to setup development environment.
* **Workflow** - tools to improve productivity.
* **Learning** - tools to support Neovim best practice.
* **Prettifier** - tools and extras to make Neovim look cool and potentially more familiar for those coming from a VS Code-style editor.

* [lazy](https://github.com/folke/lazy.nvim) - plugin manager. 
  * **Setup** - there are a few plugin managers, this one comes with the quickstart and has a cool UI.
* [treesitter](https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file) - advanced syntax highlighting.
  * **Setup** - provides much more the standard.
* [lspconfig](https://github.com/neovim/nvim-lspconfig) - languange server support.
  * **Setup**
* [cmp](https://github.com/hrsh7th/nvim-cmp) - autocompletion plugin.
  * **Setup**
* [telescope](https://github.com/nvim-telescope/telescope.nvim) - menu visualization tool.
  * **Workflow** - borderline essential workflow tool integrated into many other plugins. 
* [conform](https://github.com/stevearc/conform.nvim) - code formatter.
  * **Workflow**
* [which-key](https://github.com/folke/which-key.nvim) - keymap viewer.
  * **Learning**
* [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) - file tree viewer.
  * **Prettifier** - I do not think this qualifies as a workflow tool in Neovim - learn Telescope and file commands instead.
* [noice](https://github.com/folke/noice.nvim)
  * **Prettifier** - makes Neovim look awesome.
* [hardtime](https://github.com/m4xshen/hardtime.nvim)
  * **Learning** - great tool to encourage better use of Vim motions.
* [precognition](https://github.com/tris203/precognition.nvim)
  * **Learning** - another great supplement to hardtime to help learn Vim motions.
* [neoclip](https://github.com/AckslD/nvim-neoclip.lua)
  * **Workflow** - there might be Vim native ways to manage the clipboard but this is a great solution using Telescope.
* [gitsigns](https://github.com/lewis6991/gitsigns.nvim) - fine grained git controls.
  * **Worflow** - this is an amazing git interface for fine grained hunk controls.
* [neogit](https://github.com/NeogitOrg/neogit) - git user interface
  * **Prettifier** - [fugitive](https://github.com/tpope/vim-fugitive) seems to be the standard standard git plugin but I like this UI.
* [git-blame](https://github.com/f-person/git-blame.nvim) - show git blame as virtual text.
* [tokyonight](https://github.com/folke/tokyonight.nvim) - color theme.
  * **Prettifier**

* [autopairs](https://github.com/windwp/nvim-autopairs)
* [black](https://github.com/averms/black-nvim)
* [nvim-dap](https://github.com/mfussenegger/nvim-dap)
* [isort](https://github.com/stsewd/isort.nvim)
* [lint](https://github.com/mfussenegger/nvim-lint)
* [mini]
* [todo-comments]

* [neotest]
* [nvim-spectre]
* [obsidian]
* [render-markdown]

### Lazy
### Treesitter
### LSPConfig
### Telescope
### Autopairs
### Black
### CMP
### Conform
### Debug
### GitSigns
### Indent Line
### iSort
### Lint
### Mini
### Neo-tree
### ToDo Comments
### TokyoNight
### Which-key

### Git-blame
### Hardtime
### Neoclip
### Neogit
### Neotest
### Noice
### Nvim-Spectre
### Obsidian
### Precognition
### Render Markdown


---

# kickstart-modular.nvim

## Introduction

*This is a fork of [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) that moves from a single file to a multi file configuration.*

A starting point for Neovim that is:

* Small
* Modular
* Completely Documented

**NOT** a Neovim distribution, but instead a starting point for your configuration.

## Installation

### Install Neovim

Kickstart.nvim targets *only* the latest
['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest
['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim.
If you are experiencing issues, please make sure you have the latest versions.

### Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.

> **NOTE**
> See [Install Recipes](#Install-Recipes) for additional Windows and Linux specific notes
> and quick install snippets

### Install Kickstart

> **NOTE**
> [Backup](#FAQ) your previous configuration (if any exists)

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%localappdata%\nvim\` |
| Windows (powershell)| `$env:LOCALAPPDATA\nvim\` |

#### Recommended Step

[Fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) this repo
so that you have your own copy that you can modify, then install by cloning the
fork to your machine using one of the commands below, depending on your OS.

> **NOTE**
> Your fork's url will be something like this:
> `https://github.com/<your_github_username>/kickstart-modular.nvim.git`

You likely want to remove `lazy-lock.json` from your fork's `.gitignore` file
too - it's ignored in the kickstart repo to make maintenance easier, but it's
[recommmended to track it in version control](https://lazy.folke.io/usage/lockfile).

#### Clone kickstart.nvim
> **NOTE**
> If following the recommended step above (i.e., forking the repo), replace
> `dam9000` with `<your_github_username>` in the commands below

<details><summary> Linux and Mac </summary>

```sh
git clone https://github.com/dam9000/kickstart-modular.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/dam9000/kickstart.nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/dam9000/kickstart.nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
current plugin status. Hit `q` to close the window.

Read through the `init.lua` file in your configuration folder for more
information about extending and exploring Neovim. That also includes
examples of adding popularly requested plugins.


### Getting Started

[The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

### FAQ

* What should I do if I already have a pre-existing neovim configuration?
  * You should back it up and then delete all associated files.
  * This includes your existing init.lua and the neovim files in `~/.local`
    which can be deleted with `rm -rf ~/.local/share/nvim/`
* Can I keep my existing configuration in parallel to kickstart?
  * Yes! You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME`
    to maintain multiple configurations. For example, you can install the kickstart
    configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    ```
    When you run Neovim using `nvim-kickstart` alias it will use the alternative
    config directory and the matching local directory
    `~/.local/share/nvim-kickstart`. You can apply this approach to any Neovim
    distribution that you would like to try out.
* What if I want to "uninstall" this configuration:
  * See [lazy.nvim uninstall](https://lazy.folke.io/usage#-uninstalling) information
* Why is the kickstart `init.lua` a single file? Wouldn't it make sense to split it into multiple files?
  * The main purpose of kickstart is to serve as a teaching tool and a reference
    configuration that someone can easily use to `git clone` as a basis for their own.
    As you progress in learning Neovim and Lua, you might consider splitting `init.lua`
    into smaller parts. A fork of kickstart that does this while maintaining the 
    same functionality is available here:
    * [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)
  * *NOTE: This is the fork that splits the configuration into smaller parts.*
    The original repo with the single `init.lua` file is available here:
    * [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
  * Discussions on this topic can be found here:
    * [Restructure the configuration](https://github.com/nvim-lua/kickstart.nvim/issues/218)
    * [Reorganize init.lua into a multi-file setup](https://github.com/nvim-lua/kickstart.nvim/pull/473)

### Install Recipes

Below you can find OS specific install instructions for Neovim and dependencies.

After installing all the dependencies continue with the [Install Kickstart](#Install-Kickstart) step.

#### Windows Installation

<details><summary>Windows with Microsoft C++ Build Tools and CMake</summary>
Installation may require installing build tools and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```
</details>
<details><summary>Windows with gcc/make using chocolatey</summary>
Alternatively, one can install gcc and make which don't require changing the config,
the easiest way is to use choco:

1. install [chocolatey](https://chocolatey.org/install)
either follow the instructions on the page or use winget,
run in cmd as **admin**:
```
winget install --accept-source-agreements chocolatey.chocolatey
```

2. install all requirements using choco, exit previous cmd and
open a new one so that choco path is set, and run in cmd as **admin**:
```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```
</details>
<details><summary>WSL (Windows Subsystem for Linux)</summary>

```
wsl --install
wsl
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>

#### Linux Install
<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim-linux64
sudo mkdir -p /opt/nvim-linux64
sudo chmod a+rX /opt/nvim-linux64
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>

