local M = {}

M.global = {
   n = {
      ["<C-s>"] = { "<cmd> :w <CR>", "Write File", opts = {} },
      ["<C-x>"] = { "<cmd> :x <CR>", "Exit Nvim", opts = {} },
      ["<C-q>"] = { "<cmd> :q <CR>", "Exit Nvim", opts = {} },
   },
}

M.telescope = {
   n = {
      ["<leader>ff"] = { "<cmd> :Telescope <CR>", "Open Telesope", opts = {} },
      ["<leader>fmf"] = { "<cmd> :Telescope media_files <CR>", "Open Telescope (Media Files)", opts = {} },
   },
}

M.suda = {
   n = {
      ["<leader><C-s>"] = { "<cmd> :SudaWrite <CR>", "Write File using suda.vim", opts = {} },
   },
}

return M
