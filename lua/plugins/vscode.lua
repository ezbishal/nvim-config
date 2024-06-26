return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    name = "vscode",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "vscode"
      vim.o.background = 'dark'
      local c = require('vscode.colors').get_colors()
      require('vscode').setup({
        underline_links = true,
        color_overrides = {
          vscLineNumber = '#FFFFFF',
        },
        group_overrides = {
          Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        }
      })
      require('vscode').load()
    end
  }
}
