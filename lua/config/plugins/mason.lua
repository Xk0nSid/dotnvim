return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ensure_installed = {
          "clangd",
          "clang-format",
          "lua-language-server",
          "zls",
        }
      })
    end
  },
}
