local opts = {
    noremap = true,
    silent = true,
}

-----------------
-- Normal mode --
-----------------

-- Better window navigation --
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows --
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical +2<CR>', opts)


-----------------
-- Visual mode --
-----------------

vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
