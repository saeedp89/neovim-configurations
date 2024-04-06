return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle left<CR>")
		vim.keymap.set("n", "|", ":Neotree reveal<cr>")
		vim.keymap.set("n", "<leader>b", ":Neotree toggle show buffers left<CR>")
		vim.keymap.set("n", "<leader>s", ":Neotree float git_status<CR>")
	end,
}
