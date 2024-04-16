return {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      })


      vim.keymap.set("n", "gh", vim.lsp.buf.hover, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { noremap = true, silent = true })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { noremap = true, silent = true })
      vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>li", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>ln", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>lp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
    end,
  },
}
