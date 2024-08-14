local cmp = require("cmp")
local highlight_colors = require("nvim-highlight-colors")

-- cmp setup
cmp.setup({
  formatting = {
    format = function(entry, item)
      -- nvim-highlight-colors のフォーマットを適用
      local color_item = highlight_colors.format(entry, { kind = item.kind })
      
      -- lspkind のフォーマットを適用
      item = require("lspkind").cmp_format({
        mode = 'symbol_text',  -- シンボルとテキストを表示
        maxwidth = 50,         -- テキストの最大幅
        ellipsis_char = '...', -- 切り捨て記号
        -- 任意の lspkind 設定をここに追加
      })(entry, item)

      -- 色のハイライトがある場合はそれを適用
      if color_item.abbr_hl_group then
        item.kind_hl_group = color_item.abbr_hl_group
        item.kind = color_item.abbr
      end

      return item
    end
  },
})

-- nvim-highlight-colors setup
highlight_colors.setup({
  render = 'background',
  virtual_symbol = '■',
  virtual_symbol_prefix = '',
  virtual_symbol_suffix = ' ',
  virtual_symbol_position = 'inline',
  enable_hex = true,
  enable_short_hex = true,
  enable_rgb = true,
  enable_hsl = true,
  enable_var_usage = true,
  enable_named_colors = true,
  enable_tailwind = false,
  custom_colors = {
    { label = '%-%-theme%-primary%-color', color = '#0f1219' },
    { label = '%-%-theme%-secondary%-color', color = '#5a5d64' },
  },
  exclude_filetypes = {},
  exclude_buftypes = {}
})
