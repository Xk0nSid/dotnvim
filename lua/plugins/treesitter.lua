return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    main = "nvim-treesitter",   -- tells lazy.nvim which module to call setup() on
    opts = {
      ensure_installed = {
        "typescript",
        "tsx",
        "javascript",
        "json",
        "html",
        "css",
        "lua",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
