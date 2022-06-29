-- [[ plug.lua ]]

return require('packer').startup(function(use)
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }
  use { 'DanilaMihailov/beacon.nvim' }
  use {
      'nvim-lualine/lualine.nvim',
      Requires = {'kyzdani42/nvim-web0devicons',
      opt = true}
    }
  use { 'Mofiqul/dracula.nvim' }

  -- [[ Development ]]
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }
  use { 'Yggdroot/indentLine' }
  use { 'tpope/vim-fugitive' }
  use { 'junegunn/gv.vim' }
  use { 'windwp/nvim-autopairs' }
end,

{
   package_root = vim.fn.stdpath('config') .. '/site/pack'
})
