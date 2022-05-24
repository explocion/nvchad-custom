return {
   ["lambdalisue/suda.vim"] = {
      config = function()
         vim.g.suda_smart_edit = 1
      end,
   },
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   },
   ["karb94/neoscroll.nvim"] = {
      config = function()
         require("neoscroll").setup()
      end,

      -- lazy loading
      setup = function()
         nvchad.packer_lazy_load "neoscroll.nvim"
      end,
   },
   ["luukvbaal/stabilize.nvim"] = {
      config = function()
         require("stabilize").setup()
      end,
   },
   ["nvim-telescope/telescope-media-files.nvim"] = {
      after = "telescope.nvim",
      config = function()
         require("telescope").setup {
            extensions = {
               media_files = {
                  filetypes = { "png", "webp", "jpg", "jpeg" },
                  find_cmd = "rg", -- find command (defaults to `fd`)
               },
            },
         }
         require("telescope").load_extension "media_files"
      end,
   },
}
