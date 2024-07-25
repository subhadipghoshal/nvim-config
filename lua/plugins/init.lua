return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    lazy = false
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false
  },
  {
    "tpope/vim-abolish",
    lazy = false
  },
  {
    'fei6409/log-highlight.nvim',
    config = function()
        require('log-highlight').setup{
          extension = 'log',
          pattern = {
            '*log*.txt',
            '*.log'
          }
        }
    end,
  },
  {
    "Exafunction/codeium.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_chat = true
      })
    end
  },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" }},
        { plugins = { "nvim-dap-ui" }, types = true }
      },
    },
  },
  { "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings
  { -- optional completion source for require statements and module annotations
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      local sources = {
        { name = "codeium" },
        { name = "lazydev"},
      }
      table.insert(opts.sources, sources)
    end,
  },
  {
     "kylechui/nvim-surround",
     version = "*", -- Use for stability; omit to use `main` branch for the latest features
     event = "VeryLazy",
     config = function()
         require("nvim-surround").setup({})
     end
  },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup()
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    'HallerPatrick/py_lsp.nvim',
    config = function()
      require("py_lsp").setup({
        host_python = "/Users/sghoshal/.pyenv/shims/python",
        default_venv_name = ".venv",
        language_server = "pyright",
      })

    end
  },
  { "stevanmilic/nvim-lspimport" },
  {
    "tpope/vim-fugitive",
    lazy = false
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    opts = function()
      return require "nvchad.configs.gitsigns"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "git")
      require("gitsigns").setup(opts)
    end,
  },
  {
    "folke/trouble.nvim",
    opts = {
      {
        icons = {
          indent = {
            middle = " ",
            last = " ",
            top = " ",
            ws = "│  ",
          },
        },
        modes = {
          diagnostics = {
            groups = {
              { "filename", format = "{file_icon} {basename:Title} {count}" },
            },
          },
        },
      }
    }, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
}
