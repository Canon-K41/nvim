require('nvim-treesitter.configs').setup({
  -- ハイライト機能の有効化
  highlight = {
    enable = true,               -- コードのハイライトを有効にする
    additional_vim_regex_highlighting = false, -- Vim のハイライトとの併用を無効にする
  },
  -- インデント機能の有効化
  indent = {
    enable = true,               -- コードのインデントを自動で整える
  },
  -- コード折りたたみ機能の有効化
  fold = {
    enable = true,               -- コードの折りたたみを有効にする
  },
  -- インストールする言語の指定
  ensure_installed = all,          -- 言語パーサーをインストールしない言語のリスト
  matchup = {
    enable = true,               -- `nvim-treesitter` のマッチアップ機能を有効にする
  },
  autopairs = {
    enable = true,               -- 自動的に対応する括弧を挿入する機能を有効にする
  },
})
