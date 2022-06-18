return {
   ["lambdalisue/suda.vim"] = {
      config = function()
         vim.g.suda_smart_edit = 0
      end,
   },
   ["karb94/neoscroll.nvim"] = {
      config = function()
         require("neoscroll").setup()
      end,
   },
   ["luukvbaal/stabilize.nvim"] = {
      config = function()
         require("stabilize").setup()
      end,
   },
   -- ["mfussenegger/nvim-dap"] = {},
}
