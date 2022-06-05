local M = {}

M.telescope = {
   n = {
      ["<leader>f"] = { "<cmd> :Telescope <CR>", "Open Telesope", opts = {} },
      ["<leader>mf"] = { "<cmd> :Telescope media_files <CR>", "Open Telescope (Media Files)", opts = {} },
   },
}

return M
