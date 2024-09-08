
-- Map 'jk' to escape in Insert, Visual, and Terminal modes
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })

-- Use Ctrl + h/j/k/l to move the cursor in Insert mode
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true, silent = true })

-- Modify movement behavior for k, K, j, J, H, and L keys in Normal and Visual modes
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '10k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', '10k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', '10j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', '10h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'H', '10h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '10l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', '10l', { noremap = true, silent = true })

-- Move selected lines up or down in Visual mode
vim.api.nvim_set_keymap('x', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Map ';' to delete characters in Normal and Visual modes, and copy all text with 'YY'
vim.api.nvim_set_keymap('n', 'YY', 'ggVGy', { noremap = true, silent = true })

-- Map zz to toggle fold
vim.api.nvim_set_keymap('n', 'zz', 'za', { noremap = true, silent = true })

-- Save file with 'space + space' in Normal mode
vim.api.nvim_set_keymap('n', '<space><space>', ':w<CR>', { noremap = true, silent = true })

-- Jump to definition
vim.api.nvim_set_keymap('n', '?', '<C-]>', { noremap = true, silent = true })

-- Simplify line breaks and backspace behavior in Normal mode
vim.api.nvim_set_keymap('n', '<CR>', '$a<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space><CR>', 'a<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Backspace>', '0i<Backspace><Esc>', { noremap = true, silent = true })

-- Buffer management mappings
vim.api.nvim_set_keymap('n', '<C-j>', ':BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Esc>', ':BufferDelete<CR>', { noremap = true, silent = true })

-- Switch between windows with 'space + l' in Normal mode
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>w', { noremap = true, silent = true })

-- Window management mappings
vim.api.nvim_set_keymap('n', '<C-d>', '<C-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-<>', '<C-w>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-o>', ':only<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':vsplit<CR>', { noremap = true, silent = true })

-- Change colorscheme
vim.api.nvim_set_keymap('n', '<F1>', ':colorscheme ayu-dark<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F2>', ':colorscheme ayu-mirage<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F3>', ':colorscheme tokyonight-night<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F4>', ':colorscheme tokyonight-moon<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F5>', ':colorscheme tokyonight-storm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F6>', ':colorscheme retrobox<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F7>', ':colorscheme habamax<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F8>', ':colorscheme sorbet<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F9>', ':colorscheme slate<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F10>', ':colorscheme desert<CR>', { noremap = true, silent = true })

-- Terminal management mappings
vim.api.nvim_set_keymap('n', '<C-t><C-t>', ':ToggleTerm direction=tab<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t><C-f>', ':ToggleTerm direction=float<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t><C-h>', ':ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', 'exit<CR>', { noremap = true, silent = true })

-- Toggle NvimTree with 'space + tr' in Normal mode
vim.api.nvim_set_keymap('n', '<C-t><C-r>', ':NvimTreeFindFileToggle<CR>', { noremap = true, silent = true })

-- Move to the pre-next diagnostic message
-- vim.api.nvim_set_keymap('n', '<C-e><C-p>', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

-- Telescope mappings for file search
vim.api.nvim_set_keymap('n', '<C-f><C-f>', ':Telescope find_files<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f><C-b>', ':Telescope buffers<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f><C-g>', ':Telescope live_grep<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f><C-s>', ':Telescope grep_string<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f><C-n>', ':Telescope notify<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f><C-m>', ':Telescope marks<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f><C-r>', ':Telescope lsp_references<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-g><C-s>', ':Telescope git_status<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-g><C-b>', ':Telescope git_branches<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-g><C-s>', ':Telescope git_stash<CR><Esc>', { noremap = true, silent = true })

-- Hop mappings for jump
vim.api.nvim_set_keymap('n', '<C-h><C-c>', ':HopChar2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h><C-p>', ':HopPattern<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h><C-w>', ':HopWord<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h><C-l>', ':HopLine<CR>', { noremap = true, silent = true })

--coliopilot chat
vim.api.nvim_set_keymap("n", "<C-c>", "<cmd>lua CopilotChatBuffer()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<C-c>", "<cmd>lua ShowCopilotChatActionPrompt()<cr>", { noremap = true, silent = true })

-- Change Emmet shortcut to Ctrl + e
vim.g.user_emmet_leader_key = '<C-e>'
vim.g.user_emmet_expandabbr_key = '<C-e>'
