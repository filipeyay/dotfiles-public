-- Link do tema: https://github.com/craftzdog/solarized-osaka.nvim

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = false,
      }
    end,
  },
}
