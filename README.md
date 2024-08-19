Here is a README based on the setup you provided, including instructions for using absolute paths and key considerations:

---

# Neovim Configuration Setup

This document provides instructions for setting up Neovim with various plugins and configuration files. Please follow the guidelines below to ensure proper setup.

## Installation and Setup

### 1. Install `vim-plug`

**For Vim:**

- **Unix/Linux:**
  ```sh
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

- **Windows (PowerShell):**
  ```powershell
  iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
      ni $HOME/vimfiles/autoload/plug.vim -Force
  ```

**For Neovim:**

- **Unix/Linux:**
  ```sh
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ```

- **Linux (Flatpak):**
  ```sh
  curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

- **Windows (PowerShell):**
  ```powershell
  iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
      ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
  ```

### 2. Configure `init.vim`
 **Important Note:**
     - When specifying paths for configuration files in `init.vim`, **use absolute paths** to ensure that Neovim correctly loads the files. This helps avoid issues with file locations and ensures that the configurations are applied correctly. Change below code in `init.vim`

```vim
" Load plugin-specific settings
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-tree.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\tabset.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\lsp-setting.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\cmp.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\lspkind.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-hight-color.lua

" Source additional configuration files
source C:\Program Files\Neovim\share\nvim\setting.vim
source C:\Program Files\Neovim\share\nvim\keymap.vim
```


### 3. Install Fonts for Icons (Optional)

To use icons with `nvim-tree`, you may need to download and install the necessary fonts. Follow the instructions provided in this [Qiita article](https://qiita.com/hwatahik/items/acdd791abeef4ed13c45) for detailed guidance on font installation.

---
