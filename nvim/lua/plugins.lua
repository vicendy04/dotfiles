-- reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-tree/nvim-web-devicons'

    use {
        'tpope/vim-surround'
    }

    -- colorscheme
    use {
        'shaunsingh/nord.nvim',
        config = function() require('plugins.theme') end
    }

    -- autoclose
    use {
        'm4xshen/autoclose.nvim',
        config = function() require('plugins.autoclose') end
    }

    -- file search
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function() require('plugins.telescope') end
    }
    
    -- status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require('plugins.lualine') end
    }

    -- tab
    use {
        'akinsho/bufferline.nvim', tag = "v4.3.0",
        requires = 'nvim-tree/nvim-web-devicons',
        config = function() require('plugins.bufferline') end    
    }
    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        requires = {'nvim-tree/nvim-web-devicons'},
        config = function() require('plugins.dashboard') end
    }

--    use {
--        'nvim-treesitter/nvim-treesitter',
--        run = ':TSUpdate',
--        config = function() require('plugins.treesitter') end
--    }

end)
