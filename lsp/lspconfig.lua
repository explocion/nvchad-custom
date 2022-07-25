local M = {}

local base_config = require "plugins.configs.lspconfig"
local on_attach = base_config.on_attach
local capabilities = base_config.capabilities

local lspconfig = require "lspconfig"
local servers = require("custom.toolkit").servers.configs

M.setup = function()
  capabilities.offsetEncoding = { "utf-16" }
  for _, lsp in ipairs(servers) do
    local config = lspconfig[lsp]
    local ft = config.document_config.default_config.filetypes
    if lsp == "clangd" then
      table.insert(ft, "cuda")
    end
    config.setup {
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = ft,
    }
  end
end

return M
