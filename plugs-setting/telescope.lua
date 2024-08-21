
require('telescope').setup{
  defaults = {
    layout_config = {
      horizontal = {
        preview_width = 0.6,  -- プレビュー画面の幅を全体の60%に設定
      },
      vertical = {
        preview_height = 0.6, -- 縦レイアウト時のプレビュー画面の高さを全体の60%に設定
      },
      -- 他にもcenter、flexなどのレイアウトに対応した設定ができます
    },
    -- その他の設定
  }
}

require('telescope').load_extension('media_files')
require('telescope').setup {
  extensions = {
    media_files = {
      filetypes = {"png", "mp4", "pdf", "webp", "jpg", "jpeg", "svg"},
      find_cmd = "rg"
    }
  },
}

