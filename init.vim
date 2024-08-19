
" プラグインマネージャーを初期化
call plug#begin()

" Colorschemes
Plug 'Shatur/neovim-ayu'  " Ayu color scheme
" Highlight colors
Plug 'brenoprata10/nvim-highlight-colors'  " Highlight color codes
" Icons for file explorer and other UI components
Plug 'nvim-tree/nvim-web-devicons' " Optional, icons for Nvim Tree
Plug 'nvim-tree/nvim-tree.lua'      " File explorer
" Commenting utilities
Plug 'numToStr/Comment.nvim'  " Commenting plugin
" Utilities and libraries
Plug 'nvim-lua/plenary.nvim'  " Utility functions for Neovim
Plug 'FotiadisM/tabset.nvim'  " Tab management plugin
" File and buffer management
Plug 'romgrk/barbar.nvim'     " Buffer line management
" Telescope for fuzzy finding
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }  " Fuzzy finder
" Indentation guides
Plug 'Yggdroot/indentLine'


" Emmet support
Plug 'mattn/emmet-vim'  " Emmet support for HTML/CSS
" LSP (Language Server Protocol) configuration
Plug 'neovim/nvim-lspconfig'  " LSP configuration
Plug 'williamboman/mason.nvim'  " LSP installer
Plug 'williamboman/mason-lspconfig.nvim'  " LSP configuration integration with Mason
" Completion plugins
Plug 'hrsh7th/nvim-cmp'  " Autocompletion framework
Plug 'hrsh7th/cmp-nvim-lsp'  " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-buffer'  " Buffer source for nvim-cmp
Plug 'hrsh7th/cmp-path'  " Path source for nvim-cmp
Plug 'hrsh7th/cmp-cmdline'  " Cmdline source for nvim-cmp
" Snippet support
Plug 'saadparwaiz1/cmp_luasnip'  " LuaSnip source for nvim-cmp
Plug 'hrsh7th/vim-vsnip'  " VSnip snippets
Plug 'hrsh7th/cmp-vsnip'  " VSnip source for nvim-cmp
Plug 'onsails/lspkind.nvim'  " Symbols for LSP completion

call plug#end()

" プラグイン設定ファイルを読み込む
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-tree.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\tabset.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\lsp-setting.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\cmp.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\lspkind.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-hight-color.lua

" auto md VimEnter * execute 'cd C:/Users/kaika/workplace'

"LSPを入れた後はlsp-setting.luaとcmp.luaに記入
"
" EtNeovimの設定ファイル
source C:\Program Files\Neovim\share\nvim\setting.vim
source C:\Program Files\Neovim\share\nvim\keymap.vim
