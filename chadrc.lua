-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "catppuccin",
}

local userPlugins = require "custom.plugins"

M.plugins = {
   user = userPlugins,
   options = {
      lspconfig = {
         setup_lspconf = "custom.configs.lspconfig",
      },
   },
   override = {
      ["nvim-treesitter/nvim-treesitter"] = {
         ensure_installed = {
            "lua",
            "python",
            "bash",
            "c",
            "cpp",
            "cuda",
            "toml",
            "yaml",
            "rust",
            "latex",
            "markdown",
         },
      },
      -- ["hrsh7th/nvim-cmp"] = {
      --    mapping = {
      --       ["<C-CR>"] = require("cmp-nvim-lsp").mapping.confirm {
      --          behavior = cmp.ConfirmBehavior.Insert,
      --          select = true,
      --       },
      --       ["<CR>"] = cmp.mapping.close(),
      --    },
      -- },
   },
}

M.mappings = require "custom.configs.mappings"

return M
