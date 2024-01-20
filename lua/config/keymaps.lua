-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set

-- command
map("n", ";", ":", { remap = false })
map("n", ":", ";", { remap = false })

-- motions
map("n", "H", "^", { desc = "move to line start" })
map("n", "L", "$", { desc = "move to line start" })

map("i", ";", ":", { desc = "move to line start", remap = false, silent = true })
map("i", ":", ";", { desc = "move to line start", remap = false, silent = true })

-- buffers
--
map("n", "<S-J>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-K>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- search file
--  search in  current directory
map("n", "<leader>d", function()
  require("telescope.builtin").find_files({
    cwd = vim.fn.expand("%:p:h"),
  }, { remap = false })
end)
