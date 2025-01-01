require("config.lazy")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Tabs
vim.keymap.set("n", "<space>tn", "<cmd>tabnew<cr>")
vim.keymap.set("n", "g[", "<cmd>tabprev<cr>")
vim.keymap.set("n", "g]", "<cmd>tabnext<cr>")

vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>", { noremap = true })

vim.keymap.set("n", "<space>cp", "<cmd>make<CR>")
vim.keymap.set("n", "<space>cf", "<cmd>make %:r<CR>")

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('xks-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('TermOpen', {
  desc = 'Remove line numbers in terminal mode',
  group = vim.api.nvim_create_augroup('xks-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})
