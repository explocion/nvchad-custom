local M = {}

M.concat_table = function(original, extras)
  table.move(extras, 1, #extras, #original + 1, original)
end

M.parsers = {
  "lua",
  "vim",
  "bash",
  "python",
  "julia",
  "c",
  "cpp",
  "cuda",
  "toml",
  "rust",
  "latex",
  "markdown",
  "html",
  "css",
  "javascript",
  "typescript",
}

M.formatters = {
  "stylua",
  "shfmt",
}

M.servers = {}

M.servers.configs = {
  "sumneko_lua",
  "clangd",
  "rust_analyzer",
  "taplo",
  "jedi_language_server",
  "julials",
  "denols",
}

M.servers.installs = {
  "lua-language-server",
  "clangd",
  "rust-analyzer",
  "taplo",
  "jedi-language-server",
  "julia-lsp",
  "deno",
}

M.dap = {
  "codelldb",
}

M.mason = M.servers.installs
M.concat_table(M.mason, M.formatters)
M.concat_table(M.mason, M.dap)

return M
