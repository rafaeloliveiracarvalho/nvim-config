return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"Mofiqul/dracula.nvim",
		name = "dracula",
		priority = 10000,
		config = function()
			vim.cmd.colorscheme("dracula")
		end,
	},
}
