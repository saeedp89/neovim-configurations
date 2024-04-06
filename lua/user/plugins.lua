local fn = vim.fn

-- Automatically install packer
--
local install_path = fn.stdpath "data" .. "\\site\\pack\\packer\\start\\packer.nvim"
print(install_path)
if(fn.empty(fn.glob(install_path))) > 0 then
    PACKER_BOOTSTRAP = fn.system{
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print("Installing packer close and reopen Neovim...")
    vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local status_ok, packer = pcall(require, "packer")
if(not status_ok) then
    return
end

packer.init{
    display = {
        open_fn = function()
            return require("packer.util").float{border="rounded"}
        end,
    },
}
return packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'rstacruz/vim-closer'
    use 'tpope/vim-dispatch'
    use 'iamcco/markdown-preview.nvim'
    use 'andymass/vim-matchup'
    use 'lunarvim/colorschemes'
    use 'folke/tokyonight.nvim'
    use 'lunarvim/darkplus.nvim'
    -- cmp plugins
    use 'hrsh7th/nvim-cmp' -- The completion plugins
    use 'hrsh7th/cmp-path' -- path completion
    use 'hrsh7th/cmp-cmdline' -- cmdline completion
    use 'hrsh7th/cmp-buffer' -- buffer completion
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip' -- snippet completion
    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'


    use 'neovim/nvim-lspconfig'
--    use 'williamboman/nvim-lsp-installer'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'nvim-telescope/telescope.nvim' 
--    use 'neoclide/coc.nvim'
    if(PACKER_BOOTSTRAP) then
        require("packer").sync()
    end
end)
