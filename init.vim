" EtNeovimの設定ファイル
source C:\Program Files\Neovim\share\nvim\setting.vim
source C:\Program Files\Neovim\share\nvim\keymap.vim

" プラグインマネージャーを初期化
call plug#begin()

" プラグインを指定
Plug 'Shatur/neovim-ayu'  "color scheme
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'
"Plug 'nvim-tree/nvim-web-devicons' "2:tab maneger 
"Pug 'vim-scripts/replacewithregister'
" Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'numToStr/Comment.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'romgrk/barbar.nvim'
Plug 'https://github.com/preservim/vim-indent-guides.git'
Plug 'FotiadisM/tabset.nvim'

Plug 'neovim/nvim-lspconfig' "LSP/3
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'brenoprata10/nvim-highlight-colors'
Plug 'mattn/emmet-vim'


Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'onsails/lspkind.nvim'
" プラグインマネージャーを終

call plug#end()
"
" プラグイン設定ファイルを読み込む
source C:\Program Files\Neovim\share\nvim\plugs-setting\neovim-ayu.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-tree.lua
" source ~/.config/nvim/plugs-setting/toggleterm.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\telescope.vim
source C:\Program Files\Neovim\share\nvim\plugs-setting\comment.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\vim-indent-guides.vim
source C:\Program Files\Neovim\share\nvim\plugs-setting\tabset.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\lsp-setting.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\cmp.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\lspkind.lua
source C:\Program Files\Neovim\share\nvim\plugs-setting\nvim-hight-color.lua

autocmd VimEnter * execute 'cd C:/Users/kaika/workplace'

"LSPを入れた後はlsp-setting.luaとcmp.luaに記入
