-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- auto-install 'packer', as described in the paker repo
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Have packer use a popup window
require('packer').init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
})

-- Plugin installations go here
return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  use { 'nvim-lua/plenary.nvim' } -- provides a lot of funcs for other plugins

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use { 'onsails/lspkind.nvim' }

  use { 'jose-elias-alvarez/null-ls.nvim' }

  use { 'windwp/nvim-autopairs' }
  use { 'numToStr/Comment.nvim' }
  use { 'kylechui/nvim-surround', tag = '*' }

  -- status and buffer top bar
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }

  -- themes
  use { 'overcache/NeoSolarized' }
  use { 'Mofiqul/dracula.nvim' }

  -- automagically set up config after cloning packer.nvim
  -- keep this at the END AFTER ALL PLUGINS!
  if packer_bootstrap then
    require('packer').sync()
  end
end)
