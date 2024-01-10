return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "K", false }
    -- add a keymap
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover }
    -- keys[#keys + 1] = { "<leader>ca", false }
    keys[#keys + 1] = { "m", mode = {
      "n",
      "v",
    }, "<cmd>lua vim.lsp.buf.code_action()<CR>" }
  end,
}
