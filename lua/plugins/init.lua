-- Install Packer automatically on config load (if not installed already)
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)
  -- Make Packer self-managing
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use 'tomasiser/vim-code-dark'

  -- Automatic sessions
  use {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        log_level = 'info',
        auto_session_suppress_dirs = {'~/', '~/Projects'}
      }
    end
  }

  -- Switch between single-line and multiline forms of code
  use 'AndrewRadev/splitjoin.vim'

  -- Add mappings to change surround
  use 'tpope/vim-surround'

  -- Add mappings to (un)comment
  use 'tpope/vim-commentary'

  --  Heuristically set buffer options
  use 'tpope/vim-sleuth'

  -- Search for selected text with * command
  use 'bronson/vim-visual-star-search'

  -- Lazygit
  use 'kdheepak/lazygit.nvim'

  -- Quickfix window improvements
  use 'kevinhwang91/nvim-bqf'

  -- Tree view
  use {
    'kyazdani42/nvim-tree.lua',
  }

  -- Tree-sitter support (enables better syntax highlighting, indentation, etc. for multiple programming languages)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Treesitter enhancements
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'RRethy/nvim-treesitter-textsubjects'

  -- Language Server Protocol (LSP) support
  use 'neovim/nvim-lspconfig'

  -- LSP install from command line
  use 'williamboman/nvim-lsp-installer'

  -- Completion support
  use 'hrsh7th/nvim-cmp'

  -- Completion sources
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'

  -- Completion autopairs
  use 'windwp/nvim-autopairs'

  -- Completion snippets
  use 'rafamadriz/friendly-snippets'

  -- Show completion source types
  use 'onsails/lspkind-nvim'

  -- Snippets engine
  use 'L3MON4D3/LuaSnip'

  -- LSP signature hint
  use 'ray-x/lsp_signature.nvim'

  -- Fuzzy finder
  use {
    {
      'nvim-telescope/telescope.nvim',
      requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
        'telescope-fzf-native.nvim',
        'nvim-telescope/telescope-project.nvim',
      },
      wants = {
        'popup.nvim',
        'plenary.nvim',
        'telescope-fzf-native.nvim',
        'nvim-telescope/telescope-project.nvim',
      },
    },
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'make',
    },
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

require('plugins.treesitter')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.telescope')
require('plugins.lualine')
require('plugins.tree')
require('nvim-autopairs').setup{}
require("luasnip/loaders/from_vscode").lazy_load({ paths = { "~/.local/share/nvim/site/pack/packer/start/friendly-snippets" } })
