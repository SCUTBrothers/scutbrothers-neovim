return {
  "rafamadriz/friendly-snippets",
  config = function()
    require("luasnip.loaders.from_vscode").load({
      exclude = { "javascript" },
    })
  end,
}
