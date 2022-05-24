-- custom.configs.lspconfig file

local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"
   local detail_config = "lspconfig.server_configurations."
   capabilities.offsetEncoding = { "utf-16" }
   local default_config = {
      on_attach = attach,
      capabilities = capabilities,
   }

   local servers = {
      html = default_config,
      cssls = default_config,
      tsserver = default_config,
      sumneko_lua = default_config,
      pyright = default_config,
      rust_analyzer = default_config,
      clangd = {
         on_attach = attach,
         capabilities = capabilities,
         filetypes = vim.tbl_deep_extend(
            "keep",
            { "cuda" },
            require(detail_config .. "clangd").default_config.filetypes
         ),
      },
   }

   for lsp, config in pairs(servers) do
      lspconfig[lsp].setup(config)
   end
end

return M
