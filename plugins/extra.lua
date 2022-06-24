return {
   ["lambdalisue/suda.vim"] = {
      config = function()
         vim.g.suda_smart_edit = 0
      end,
      cmd = { "SudaWrite", "SudaRead" },
   },
   ["karb94/neoscroll.nvim"] = {
      config = function()
         require("neoscroll").setup()
      end,
      event = { "WinScrolled" },
   },
   ["luukvbaal/stabilize.nvim"] = {
      config = function()
         require("stabilize").setup()
      end,
      event = { "WinNew", "WinLeave" },
   },
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = { "nvim-lspconfig" },
      config = function()
         require("custom.lsp.null-ls").setup()
      end,
   },
   ["mfussenegger/nvim-dap"] = {
      config = function()
         require("custom.dap.config").setup()
      end,
      module = { "dap" },
      cmd = { "DapContinue", "DapToggleBreakpoint" },
   },
   ["theHamsta/nvim-dap-virtual-text"] = {
      config = function()
         require("nvim-dap-virtual-text").setup()
      end,
      after = "nvim-dap",
   },
   ["rcarriga/nvim-dap-ui"] = {
      config = function()
         require("dapui").setup()
      end,
      requires = { "mfussenegger/nvim-dap" },
      after = "nvim-dap",
   },
}
