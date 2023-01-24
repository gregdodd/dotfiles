-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself

  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'}}  
  }

  use({ 
	  'Mofiqul/dracula.nvim',
   	  as = 'dracula',
          config = function()
          	require("dracula").setup()
          	vim.cmd('colorscheme dracula')
          end	
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
end)
