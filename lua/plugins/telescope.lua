return {
  { "nvim-telescope/telescope-ui-select.nvim", },
  { "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_strategy = "vertical",
          layout_config = {
            vertical = {
            prompt_position = "top",
             width = 0.4,
             height = 0.6,
            },
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>f", function() builtin.find_files({ previewer = false }) end, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols, { noremap = true, silent = true })

      require("telescope").load_extension("ui-select")
    end,
  },
}
