local M = {}

M.global = {
   n = {
      ["<C-s>"] = { "<cmd> :w <CR>", "Write File", opts = {} },
      ["<C-x>"] = { "<cmd> :x <CR>", "Exit Nvim", opts = {} },
      ["<C-q>"] = { "<cmd> :q <CR>", "Quit Nvim", opts = {} },
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

M.dap = {
   n = {
      ["<F5>"] = { "<cmd> :DapContinue <CR>", "Debugger Continue", opts = {} },
      ["<leader>c"] = { "<cmd> :DapContinue <CR>", "Debugger Continue", opts = {} },
      ["<leader>si"] = { "<cmd> :DapStepInto <CR>", "Debugger Step Into", opts = {} },
      ["<leader>s"] = { "<cmd> :DapStepOver <CR>", "Debugger Step Over", opts = {} },
      ["<leader>so"] = { "<cmd> :DapStepOut <CR>", "Debugger Step Out", opts = {} },
      ["<leader>bp"] = { "<cmd> :DapToggleBreakpoint <CR>", "Debugger Step Out", opts = {} },
      ["<leader>t"] = { "<cmd> :DapTerminate <CR>", "Debugger Terminate", opts = {} },
   },
}

return M
