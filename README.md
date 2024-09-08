# Neovim Configuration Setup

このドキュメントは、Neovimのセットアップ手順を提供します。以下のガイドラインに従って、正しいセットアップを行ってください。

## インストールとセットアップ

### 1. `vim-plug`のインストール

#### Vimの場合

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

#### Neovimの場合

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

### 2. `init.vim`の設定

**重要な注意点:**
- 設定ファイルのパスを指定する際には、**絶対パス**を使用してください。これにより、Neovimがファイルを正しく読み込み、設定が正しく適用されます。

以下のコードを`init.vim`に追加してください:

```vim
" プラグイン固有の設定を読み込む
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-tree.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\tabset.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\lsp-setting.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\cmp.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\lspkind.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-hight-color.lua

" 追加の設定ファイルを読み込む
source C:\Program Files\Neovim\share\nvim\setting.vim
source C:\Program Files\Neovim\share\nvim\keymap.vim
```

### 3. アイコン用フォントのインストール (オプション)

`nvim-tree`でアイコンを使用するには、必要なフォントをダウンロードしてインストールする必要があります。詳細な手順は、この[Qiita記事](https://qiita.com/hwatahik/items/acdd791abeef4ed13c45)を参照してください。

フォントのダウンロードは[こちら](https://www.nerdfonts.com/font-downloads)から。

### 4. Telescopeの依存モジュールのインストール

Telescopeを使用するには、いくつかの依存モジュールが必要です。
```vim
:cheackhealth telescope
```
で調べて必要なモジュールインストールしてください。

### 5. TreesitterのCコンパイル

Treesitterを使用するには、Cコンパイラが必要です。Mingwを使用することができます。詳細は[こちら](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support)を参照してください。

### 6. Copilotの認証

以下のコマンドを実行してCopilotをセットアップします:
ファイルの場所によっては管理者権限で実行して下さい。
```vim
:copilot setup
```

