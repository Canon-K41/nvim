-- nvim-lualine/lualine.nvim
 --https://github.com/nvim-lualine/lualine.nvim?tab=readme-ov-file
require('lualine').setup()
-- options = { theme = 'gruvbox' }
-- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.mdhttps://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md

-- kylechui/nvim-surround
--https://github.com/kylechui/nvim-surround?tab=readme-ov-file
-- --    Old text                    Command         New text
-- --------------------------------------------------------------------------------
--     surr*ound_words             ysiw)           (surround_words)
--     *make strings               ys$"            "make strings"
--     [delete ar*ound me!]        ds]             delete around me!
--     remove <b>HTML t*ags</b>    dst             remove HTML tags
--     'change quot*es'            cs'"            "change quotes"
--     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
--     delete(functi*on calls)     dsf             function calls
require("nvim-surround").setup()

-- phaazon/hop.nvim
-- https://github.com/hadronized/hop.nvim
require('hop').setup()

-- https://github.com/lukas-reineke/indent-blankline.nvim
require("ibl").setup()

-- 'goolord/alpha-nvim'
-- https://github.com/windwp/nvim-autopairs
require('impatient')

-- 'folke/noice.nvim'
-- https://github.com/folke/noice.nvim
require("noice").setup()


-- https://github.com/windwp/nvim-autopairs
-- nvim-autopairs
require('nvim-autopairs').setup({
})

-- https://github.com/akinsho/toggleterm.nvim
-- toggleterm,nvim
require("toggleterm").setup()
