return {
  {
    'saghen/blink.cmp',
    version = "*",
    build = "cargo build --release",
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
  },
}
