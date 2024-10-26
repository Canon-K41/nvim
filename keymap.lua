-- Map 'jk' to escape in Insert, Visual, and Terminal modes
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('t', '<Esc>', 'exit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Esc>', ':BufferDelete<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true, silent = true })

vim.keymap.set('n', '<Up>', '<cmd>resize +1<CR>', { silent = true, desc = 'Increase window height' })
vim.keymap.set('n', '<Down>', '<cmd>resize -1<CR>', { silent = true, desc = 'Decrease window height' })
vim.keymap.set('n', '<Left>', '<cmd>vertical resize -1<CR>', { silent = true, desc = 'Decrease window width' })
vim.keymap.set('n', '<Right>', '<cmd>vertical resize +1<CR>', { silent = true, desc = 'Increase window width' })

-- Modify movement behavior for k, K, j, J, H, and L keys in Normal and Visual modes
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '10gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', '10gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '10gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', '10gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', '10h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'H', '10h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '10l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', '10l', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })

-- Buffer management mappings
vim.api.nvim_set_keymap('n', '<C-j>', ':BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>p', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<CR>', 'j0i<CR><Esc>', { noremap = true, silent = true })

-- Move selected lines up or down in Visual mode
vim.api.nvim_set_keymap('x', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Save file with 'space + space' in Normal mode
vim.api.nvim_set_keymap('n', '<space>w', ':w<CR>', { noremap = true, silent = true })

-- Jump to definition or show explani
vim.api.nvim_set_keymap('n', '<space>e', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>d', '<C-]>', { noremap = true, silent = true })

-- Window management mappings
vim.api.nvim_set_keymap('n', '<space><Esc>', ':only<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>v', ':vsplit<CR>', { noremap = true, silent = true })

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

-- Toggle NvimTree with 'space + tr' in Normal mode
vim.api.nvim_set_keymap('n', '<space>s', ':NvimTreeFindFileToggle<CR>', { noremap = true, silent = true })

-- Move to the pre-next diagnostic message
vim.api.nvim_set_keymap('n', '<C-e><C-p>', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })

-- Telescope mappings for file search
vim.api.nvim_set_keymap('n', '<C-l><C-f>', ':Telescope find_files<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l><C-b>', ':Telescope buffers<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l><C-g>', ':Telescope live_grep<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l><C-s>', ':Telescope grep_string<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l><C-n>', ':Telescope notify<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l><C-m>', ':Telescope marks<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l><C-r>', ':Telescope lsp_references<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l><C-r>', ':Telescope registers<CR><Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-g><C-s>', ':Telescope git_status<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-g><C-b>', ':Telescope git_branches<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-g><C-s>', ':Telescope git_stash<CR><Esc>', { noremap = true, silent = true })

--coliopilot chat
vim.api.nvim_set_keymap('n', '<space>c', ':CopilotChat<CR>:set filetype=markdown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", "<cmd>lua CopilotChatBuffer()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<space>c', ':CopilotChat<CR>:set filetype=markdown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<C-c>", "<cmd>lua ShowCopilotChatActionPrompt()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-c>', '<M-]>' , { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<space>n', ':noh<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<C-c><C-d>', ':cd %:h<CR>', { noremap = true, silent = true })
