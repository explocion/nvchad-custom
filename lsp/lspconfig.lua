-- custom.configs.lspconfig file

local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- some modifications to default config
   table.insert(require("lspconfig.server_configurations.clangd").default_config.filetypes, "cuda")

   local servers = {
      "html",
      "cssls",
      "tsserver",
      "sumneko_lua",
      "pyright",
      "rust_analyzer",
      "clangd",
      "taplo",
      "texlab",
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
