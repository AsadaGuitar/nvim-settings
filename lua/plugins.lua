vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --
  -- この下にインストールするプラグインを記載します。
  use 'mrcjkb/haskell-tools.nvim'
  use 'cocopon/iceberg.vim'
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    config = function() require 'plugins.nvim-tree' end,
    requires = 'nvim-tree/nvim-web-devicons',
  }
  -- use 'プラグインA'
  -- use 'プラグインB'
  --
end)
