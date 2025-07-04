return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    config = function()
      vim.g.gruvbox_material_enable_italic = false
      vim.g.gruvbox_material_background = "medium"
    end,
  },

  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    opts = {
      italic = {
        strings = false,
        emphasis = false,
        comment = true,
        folds = false,
      },
    },
  },
}
