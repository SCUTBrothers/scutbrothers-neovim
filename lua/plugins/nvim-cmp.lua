return {
  "nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.window = {
      completion = cmp.config.window.bordered(),
    }

    cmp.setup.filetype({ "lua", "vim", "typescript", "javascript", "typescriptreact" }, {
      window = {
        documentation = cmp.config.disable,
      },
    })
  end,
}
