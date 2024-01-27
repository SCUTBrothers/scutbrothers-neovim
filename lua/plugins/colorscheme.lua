return {
  "ellisonleao/gruvbox.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  opts = {
    italic = {
      strings = true,
      operators = false,
      comments = false,
    },
    contrast = "hard",
    transparent_mode = true,
  },
}
