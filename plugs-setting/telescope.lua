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

