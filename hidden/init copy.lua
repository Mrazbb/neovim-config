local opt = vim.opt

-- Set clipboard to use unnamedplus
opt.clipboard = 'unnamedplus' -- Enable line numbering opt.number = true opt.relativenumber = true

-- Set tab and indentation settings
opt.tabstop = 3
opt.shiftwidth = 4

-- Enable mouse support
opt.mouse = 'a'

vim.g.mapleader = " "

 
 
-- Fast moving 
vim.keymap.set('n', 'J', '10j')
vim.keymap.set('n', 'K', '5k')
vim.keymap.set('n', '<Leader>j', 'J')




-- moving to group on the left, right , up , down
if vim.g.vscode then
    vim.keymap.set('n', '<Leader>h', function() vim.fn.VSCodeNotify('workbench.action.navigateLeft') end, { silent = true })
    vim.keymap.set('n', '<Leader>j', function() vim.fn.VSCodeNotify('workbench.action.navigateDown') end, { silent = true })
    vim.keymap.set('n', '<Leader>k', function() vim.fn.VSCodeNotify('workbench.action.navigateUp') end, { silent = true })
    vim.keymap.set('n', '<Leader>l', function() vim.fn.VSCodeNotify('workbench.action.navigateRight') end, { silent = true })
else
    vim.keymap.set('n', '<Leader>h', '<C-W>h')
    vim.keymap.set('n', '<Leader>j', '<C-W>j')
    vim.keymap.set('n', '<Leader>k', '<C-W>k')
    vim.keymap.set('n', '<Leader>l', '<C-W>l')
end


if vim.g.vscode then
    vim.keymap.set('n', '<Leader>w', function() vim.fn.VSCodeNotify('workbench.action.files.save') end, { silent = true })
    vim.keymap.set('n', '<Leader>p', function() vim.fn.VSCodeNotify('workbench.action.showCommands') end, { silent = true })
    vim.keymap.set('n', '<Leader>t', function() vim.fn.VSCodeNotify('workbench.action.gotoSymbol') end, { silent = true })

    vim.keymap.set('n', '<Leader>tn', function() vim.fn.VSCodeNotify('workbench.action.files.newUntitledFile') end, { silent = true })
    vim.keymap.set('n', '<Leader>i', function() vim.fn.VSCodeNotify('workbench.action.previousEditor') end, { silent = true })
    vim.keymap.set('n', '<Leader>o', function() vim.fn.VSCodeNotify('workbench.action.nextEditor') end, { silent = true })
    -- workbench.action.quickOpenLeastRecentlyUsedEditorInGroup
    --workbench.action.previousEditor
    --workbench.action.debug.nextEditor
end


-- vim.keymap.set('n', '<Leader>ú', '<CMD>noh<CR>')

-- Key mappings for commentary
if vim.g.vscode then
    vim.api.nvim_set_keymap('x', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true })
    vim.api.nvim_set_keymap('n', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true })
    vim.api.nvim_set_keymap('o', 'gc', '<Plug>VSCodeCommentary', { noremap = false, silent = true })
    vim.api.nvim_set_keymap('n', 'gcc', '<Plug>VSCodeCommentaryLine', { noremap = false, silent = true })
end
require('packer').startup(function(use) -- Your existing plugins go here

    -- Add nvim-surround plugin configuration
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
        
    })

    -- Any additional plugins go here
end)