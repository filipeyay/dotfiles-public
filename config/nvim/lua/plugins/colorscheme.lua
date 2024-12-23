return {
  -- Cobalt2
  {
    "lalitmee/cobalt2.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
    init = function()
        require("colorbuddy").colorscheme("cobalt2")
    end,
  },

  -- Kanagawa Paper
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- transparent = true,
    },
  }
}
