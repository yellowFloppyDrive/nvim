local lsp_names = {
  "lua_ls",
  "ts_ls",
  "zls",
  "intelephense",
  "html",
  "cssls",
}

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
        ensure_installed = lsp_names
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local opts = {}

      local lspconfig = require("lspconfig")

      --Enable (broadcasting) snippet capability for completion
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      for _,lsp_name in pairs(lsp_names) do
        local lsp = require('lspconfig')[lsp_name]

        if lsp then
          lsp.setup({ capabilities = capabilities })
        end
      end

      vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, opts)
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
