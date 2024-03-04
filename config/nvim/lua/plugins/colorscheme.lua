return {
  {
    "oxfist/night-owl.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        colorscheme = "night-owl",
      }
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = { transparent = false },
  },
}
