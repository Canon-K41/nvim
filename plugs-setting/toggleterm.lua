

-- ToggleTerm プラグインの設定
require("toggleterm").setup{
  -- ターミナルウィンドウのサイズ。数値または関数を指定できます
  size = 20,
  -- トグルするためのマッピングキーを設定します
  -- open_mapping = [[<c-\>]],
  -- ターミナルウィンドウの方向。 'vertical', 'horizontal', 'tab', 'float' のいずれか
  direction = 'float',
  -- テキストプロセスが終了したときにウィンドウを閉じるかどうか
  close_on_exit = true,
  -- デフォルトのシェルを変更します。文字列または文字列を返す関数
  shell = vim.o.shell,
  -- テキストの出力時に自動的に最下部にスクロールするかどうか
  auto_scroll = true,
  -- 挿入モードでもマッピングが有効かどうか
  insert_mappings = true,
  -- 開いているテキストでもマッピングが有効かどうか
  terminal_mappings = true,
  -- ハイライトの設定
  highlights = {
    Normal = {
      guibg = "#1d2021",
    },
    NormalFloat = {
      link = 'Normal'
    },
    FloatBorder = {
      guifg = "#928374",
      guibg = "#1d2021",
    },
  },
  -- テキストの方向が 'float' の場合にのみ関連する設定
  float_opts = {
    border = 'curved',
    width = 100,
    height = 30,
    winblend = 3,
  },
}

-- 特定のターミナルのカスタム設定例
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

-- キーマッピングの設定
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
