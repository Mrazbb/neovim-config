local opt = vim.opt

-- Set clipboard to use unnamedplus
opt.clipboard = 'unnamedplus'

-- Enable line numbering
opt.number = true
opt.relativenumber = true


-- opt.tabstop = 3
-- opt.shiftwidth = 4

-- Enable mouse support
opt.mouse = 'a'

vim.g.mapleader = " "

 
 
-- Fast moving 
vim.keymap.set('n', 'J', '5j')
vim.keymap.set('n', 'K', '5k')
vim.keymap.set('n', '<Leader>j', 'J')