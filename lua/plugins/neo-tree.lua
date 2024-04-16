return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				width = 35,
				mappings = {
					h = "close_node",
					l = "open",
				},
			},
		})

		vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", {})
		vim.keymap.set("n", "<leader>bf", "<cmd>Neotree buffers reveal float<CR>", {})
	end,
}
