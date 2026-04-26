-- Configure ts_ls using the new API
vim.lsp.config("ts_ls", {
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayFunctionLikeReturnTypeHints = true,
      },
    },
  },
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",  -- Neovim uses LuaJIT
      },
      workspace = {
        checkThirdParty = false,
        -- Makes lua_ls aware of Neovim runtime files (vim.* globals)
        library = vim.api.nvim_get_runtime_file("", true),
      },
      diagnostics = {
        globals = { "vim" },  -- suppress "undefined global vim" warnings
      },
      hint = {
        enable = true,  -- inlay hints
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

-- Enable it for the relevant filetypes
vim.lsp.enable("ts_ls")
vim.lsp.enable("lua_ls")

