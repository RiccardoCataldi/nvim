return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			variant = "moon",
			dark_variant = "moon",
		})
		vim.cmd("colorscheme rose-pine")
		-- Alternatively choose explicitly:
		-- vim.cmd("colorscheme rose-pine-moon")
	end
}
