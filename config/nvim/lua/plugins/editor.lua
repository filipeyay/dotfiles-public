return {

  -- color highlights
  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
  },

  -- todo comments highlights
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- neotree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right", -- opens at the right side at the window
        width = "50%", -- occupy half of the window
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },
}
