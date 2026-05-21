vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true })

vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result cursor centered" })

vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", { desc = "Restart config :restart)" })

-- native undotree
vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "Toggle Builtin Undotree" })
