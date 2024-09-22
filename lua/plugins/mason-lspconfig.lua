return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "stylua",
          "eslint_d",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local opts = {}

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})

      vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
      vim.keymap.set('n', '<leader>D', vim.diagnostic.goto_prev, opts)
      vim.keymap.set('n', '<leader>d', vim.diagnostic.goto_next, opts)
    end
  }
}
