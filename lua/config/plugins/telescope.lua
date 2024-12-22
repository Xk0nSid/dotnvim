return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
      vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<space>fn", function()
        local opts = require('telescope.themes').get_ivy({
          cwd = vim.fn.stdpath("config")
        })
        require('telescope.builtin').find_files(opts)
      end)
      vim.keymap.set("n", "<space>fb", function()
        local opts = require('telescope.themes').get_ivy()
        require('telescope.builtin').buffers(opts)
      end)
    end,
  },
}
