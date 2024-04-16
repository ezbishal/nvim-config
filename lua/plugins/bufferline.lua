return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo Tree",
						padding = 1,
						highlight = "Directory",
						text_align = "left",
					},
				},
			},
		})
	end,
}
