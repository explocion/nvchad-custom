-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "catppuccin",
}

local cmp = require "cmp"

local userPlugins = require "custom.plugins"

M.plugins = {
   user = userPlugins,
   options = {
      lspconfig = {
         setup_lspconf = "custom.configs.lspconfig",
      },
   },
}

M.mappings = require "custom.configs.mappings"

return M
