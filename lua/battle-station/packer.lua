vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    
    use 'wbthomason/packer.nvim'


    use {

            'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    requires = { {'nvim-lua/plenary.nvim'} }
        
	}



    use({ 'rose-pine/neovim', as = 'rose-pine' })
    vim.cmd('colorscheme rose-pine')

    use 'ms-jpq/chadtree'
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'ThePrimeagen/harpoon'

    use {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
    }

end)
