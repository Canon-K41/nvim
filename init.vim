" プラグインマネージャーを初期化
call plug#begin()
"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"start booster
Plug 'lewis6991/impatient.nvim'
"start Page
Plug 'goolord/alpha-nvim'
" Colorschemes
Plug 'rebelot/kanagawa.nvim'
Plug 'Shatur/neovim-ayu'  " Ayu color scheme
Plug 'folke/tokyonight.nvim'
" Highlight colors
Plug 'brenoprata10/nvim-highlight-colors'  " Highlight color codes
" Icons for file explorer and other UI components
Plug 'nvim-tree/nvim-web-devicons' " Optional, icons for Nvim Tree
Plug 'nvim-tree/nvim-tree.lua'      " File explorer
" Commenting utilities
Plug 'numToStr/Comment.nvim'  " Commenting plugin
" Utilities and libraries
Plug 'FotiadisM/tabset.nvim'  " Tab management plugin
" File and buffer management
Plug 'romgrk/barbar.nvim'     " Buffer line management
Plug 'nvim-lualine/lualine.nvim' " add status line
" Telescope for fuzzy finding and media file
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
"notification
Plug 'rcarriga/nvim-notify'
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
"junp
Plug 'phaazon/hop.nvim'
"autopairs
Plug 'windwp/nvim-autopairs'
" Indentation guides
Plug 'lukas-reineke/indent-blankline.nvim'
"surrunging  
Plug 'kylechui/nvim-surround'
" Emmet support
Plug 'mattn/emmet-vim'  " Emmet support for HTML/CSS
" LSP (Language Server Protocol) configuration
Plug 'neovim/nvim-lspconfig'  " LSP configuration
Plug 'williamboman/mason.nvim'  " LSP installer
Plug 'williamboman/mason-lspconfig.nvim'  " LSP configuration integration with Mason
"terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
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
source C:\Program Files\Neovim\share\nvim\plugs-setting\alpha.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\treesitter.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\default-setting.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\telescope.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-notify.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\hop.lua
"LSPを入れた後はlsp-setting.luaとcmp.luaに記入
" EtNeovimの設定ファイル
source C:\Program Files\Neovim\share\nvim\setting.vim
source C:\Program Files\Neovim\share\nvim\keymap.vim
