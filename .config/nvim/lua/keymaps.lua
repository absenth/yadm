lncal opts = {
    noremap = true,
    silent = true,
}

-- Set the leader --
vim.g.mapleader = ' '

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
vim.keymap.set('n', '<Leader>ns', ':lua toggle_stuff()<CR>', default_opts)
vim.keymap.set('n', '<Leader>n', ':lua toggle_num()<CR>', default_opts)
vim.keymap.set('n', '<Leader>rn', ':lua toggle_relnum()<CR>', default_opts)

-----------------
-- Visual mode --
-----------------

vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-------------
-- Toggles --
-------------
function toggle_stuff()
    vim.o.signcolumn = vim.o.signcolumn == "yes" and "no" or "yes"
    vim.o.number = not vim.o.number
    vim.o.relativenumber = not vim.o.relativenumber
end
function toggle_relnum()
    vim.o.relativenumber = not vim.o.relativenumber
end
function toggle_num()
    vim.o.number = not vim.o.number
end
