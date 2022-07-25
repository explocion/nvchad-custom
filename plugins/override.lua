local toolkit = require "custom.toolkit"

return {
  ["nvim-treesitter/nvim-treesitter"] = {
    ensure_installed = toolkit.parsers,
  },
  ["williamboman/mason"] = {
    ensure_installed = toolkit.mason,
  },
  ["NvChad/ui"] = {
    tabufline = {
      enabled = true,
      lazyload = false,
    },
  },
}
