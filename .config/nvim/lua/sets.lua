-- Hint: use `:h <option"` to figure out the meanings of each as needed
vim.opt.clipboard = 'unnamedplus'			-- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- UI Config
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.showmode = true

-- Searching
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = false
vim.opt.smartcase = false

-- Strip trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
