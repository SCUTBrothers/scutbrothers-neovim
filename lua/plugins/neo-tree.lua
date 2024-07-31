return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({
          action = "focus",
          source = "filesystem",
          position = "left",
          reveal = true,
        })
      end,
      desc = "Toggle NeoTree",
    },
  },

  opts = {
    filesystem = {
      window = {
        mappings = {
          ["o"] = "open",
          ["d"] = "delete",
          ["a"] = "add",
          ["f"] = "add_directory",
        },
      },
    },

    default_component_configs = {
      git_status = {
        symbols = {
          added = "A",
          modified = "M",
          deleted = "x",
          untracked = "?",
          ignored = "I",
          staged = "S",
          unstaged = "U",
          conflicted = "C",
        },
      },
    },
  },
}
