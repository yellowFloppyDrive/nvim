return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "angular",
        "bash",
        "c",
        "cmake",
        "css",
        "csv",
        "dockerfile",
        "gitignore",
        "glsl",
        "graphql",
        "html",
        "java",
        "javascript",
        "json",
        "kotlin",
        "lua",
        "markdown",
        "php",
        "phpdoc",
        "python",
        "regex",
        "scss",
        "sql",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
        "zig",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
