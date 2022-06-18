local M = {}

M["nvim-treesitter/nvim-treesitter"] = {
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
}

-- local present, cmp = pcall(require, "cmp")
--
-- if present then
--    M["hrsh7th/nvim-cmp"] = {
--       mapping = {
--          ["<C-CR>"] = cmp.mapping.confirm {
--             behavior = cmp.ConfirmBehavior.Insert,
--             select = true,
--          },
--          ["<CR>"] = cmp.mapping.close(),
--       },
--    }
-- end

return M
