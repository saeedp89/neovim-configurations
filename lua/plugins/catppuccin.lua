return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		--config = function()
		--	vim.cmd.colorscheme("catppuccin")
		--end,
	},
	{
		"morhetz/gruvbox",
    lazy=false,
    name="gruvbox",
		config = function()
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
