-- Enable mouse support
vim.o.mouse = 'a'

-- Colorscheme
vim.cmd('colorscheme ron')

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Show line numbers
vim.wo.number = true

-- Arrow keys wrap around lines
vim.opt.whichwrap = vim.opt.whichwrap._value .. '<,>,[,]'  -- Concatenate manually

-- Map Ctrl+A to select all
vim.api.nvim_set_keymap('n', '<C-a>', '<Esc>gg0VG<CR>', { noremap = true, silent = true })

-- Insert mode mappings
vim.api.nvim_set_keymap('i', '<C-h>', '<C-w>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-w>', { noremap = true })
