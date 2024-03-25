return {
  "neovim/nvim-lspconfig",
  vscode = true,
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "K", false }
    -- add a keymap
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover }
  end,
}
