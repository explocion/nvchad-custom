local M = {}

M.disabled = {
   i = {
      ["<CR>"] = "",
   },
}

M.telescope = {
   n = {
      ["<leader>ff"] = { "<cmd> :Telescope <CR>", "Open Telesope", opts = {} },
      ["<leader>fmf"] = { "<cmd> :Telescope media_files <CR>", "Open Telescope (Media Files)", opts = {} },
   },
}

return M
