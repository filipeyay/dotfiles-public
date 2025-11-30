-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'nvim-mini/mini.pairs',
    event = 'VeryLazy',
    config = function(_, opts)
      require('mini.pairs').setup(opts)
    end,
  },
  -- Refactoring tool
  {
    'ThePrimeagen/refactoring.nvim',
    keys = {
      {
        '<leader>r',
        function()
          require('refactoring').select_refactor()
        end,
        mode = 'v',
        noremap = true,
        silent = true,
        expr = false,
      },
    },
    opts = {},
  },

  -- Go forward/backward with square brackets
  {
    'echasnovski/mini.bracketed',
    event = 'BufReadPost',
    config = function()
      local bracketed = require 'mini.bracketed'
      bracketed.setup {
        file = { suffix = '' },
        window = { suffix = '' },
        quickfix = { suffix = '' },
        yank = { suffix = '' },
        treesitter = { suffix = 'n' },
      }
    end,
  },

  -- live preview
  {
    'brianhuster/live-preview.nvim',
    dependencies = {
      --"brianhuster/autosave.nvim", -- autosave / not required

      'nvim-telescope/telescope.nvim',
    },
    opts = {},
  },

  -- theme
  {
    'ellisonleao/gruvbox.nvim',
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
  {
    'polirritmico/monokai-nightasty.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      dark_style_background = 'transparent',
      hl_styles = {
        comments = { italic = true },
        keywords = { italic = false },
      },
    },
  },

  {
    'datsfilipe/vesper.nvim',
    opts = {
      italics = {
        comments = false,
        keywords = false,
        functions = false,
        strings = false,
        variables = false,
      },
    },
  },

  -- todo comments highlights
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- neotree
  {
    'nvim-neo-tree/neo-tree.nvim',
    opts = {
      window = {
        position = 'right',
        width = '40%',
      },
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
  },

  -- LSP
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      --ensure_installed = {
      --'clangd',
      --'stylua',
      --'selene',
      --'shellcheck',
      --'shfmt',
      --'prettier',
      --'pyright',
      --'quick_lint_js',
      --'ts_ls',
      --'cssls',
      --'html',
      --'yamlls',
      --},
    },
    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },
      'neovim/nvim-lspconfig',
    },
  },

  -- treesitter
  { 'nvim-treesitter/playground', cmd = 'TSPlaygroundToggle' },

  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        'css',
        'gitignore',
        'http',
        'java',
        'php',
        'scss',
        'sql',
      },

      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { 'BufWrite', 'CursorHold' },
      },

      playground = {
        enable = true,
        disable = {},
        updatetime = 25,
        persist_queries = true,
        keybindings = {
          toggle_query_editor = 'o',
          toggle_hl_groups = 'i',
          toggle_injected_languages = 't',
          toggle_anonymous_nodes = 'a',
          toggle_language_display = 'I',
          focus_language = 'f',
          unfocus_language = 'F',
          update = 'R',
          goto_node = '<cr>',
          show_help = '?',
        },
      },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)

      -- MDX
      vim.filetype.add {
        extension = {
          mdx = 'mdx',
        },
      }
      vim.treesitter.language.register('markdown', 'mdx')
    end,
  },
}
