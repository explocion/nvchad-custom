return {
   ["lambdalisue/suda.vim"] = {
      config = function()
         vim.g.suda_smart_edit = 0
      end,
      cmd = {"SudaWrite", "SudaRead"}
   },
   ["karb94/neoscroll.nvim"] = {
      config = function()
         require("neoscroll").setup()
      end,
      event = {"WinScrolled"}
   },
   ["luukvbaal/stabilize.nvim"] = {
      config = function()
         require("stabilize").setup()
      end,
      event = {"WinNew", "WinLeave"}
   },
   ["akinsho/bufferline.nvim"] = {
     event = {"BufAdd"}
   },
  ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.lsp.null-ls").setup()
      end,
   },
}
