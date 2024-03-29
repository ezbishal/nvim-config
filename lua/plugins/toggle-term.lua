return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-j>]],
			shade_terminals = true,
			start_in_insert = true,
			direction = "float",
			close_on_exit = true,
			shell = "pwsh",
			float_opts = {
				border = "curved",
				width = 100,
				height = 30,
				winblend = 3,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})
	end,
}
