return {
	"akinsho/toggleterm.nvim",
	opts = function()
		local shell = vim.loop.os_uname().sysname == "Windows_NT" and "pwsh" or "bash"
		return {
			open_mapping = [[<c-j>]],
			shade_terminals = true,
			start_in_insert = true,
			direction = "horizontal",
			close_on_exit = true,
			shell = shell,
		}
	end
}