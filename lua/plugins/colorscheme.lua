return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {},

	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- Default to mocha; change manually if needed
			transparent_background = true, -- Set transparency manually
			styles = {
				keywords = { "bold" },
				functions = { "italic" },
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
