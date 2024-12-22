require("config.lazy")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Tabs
vim.keymap.set("n", "<space>tn", "<cmd>tabnew<cr>")
vim.keymap.set("n", "g[", "<cmd>tabprev<cr>")
vim.keymap.set("n", "g]", "<cmd>tabnext<cr>")

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('xks-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
