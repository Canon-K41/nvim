local user_path = vim.fn.expand('$USERPROFILE')
local status, alpha = pcall(require, "alpha")
if not status then
	return
end

local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
	"                                                     ",
	"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
	"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
	"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
	"                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("n", "🆕  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "📄  Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button("s", "⚙️  Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button("d", "🖥️  Workplace", ":e " .. user_path .. "\\workplace<CR> | :cd " .. user_path .. "\\workplace<CR> | split . | wincmd k | pwd<CR>"),
    dashboard.button("t", "📚  TODO list", ":e ~/todo.txt<CR>"),
    dashboard.button("q", "🚪  Quit", ":qa<CR>"),
}
-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
