-- Link do tema: https://github.com/oxfist/night-owl.nvim

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
}
