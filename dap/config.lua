local M = {}

M.plugins = {
   dapui = function()
      return require "dapui"
   end,
   virtualText = function()
      return require "nvim-dap-virtual-text"
   end,
}

local dap = require "dap"

M.open = function()
   M.plugins.dapui().open()
   M.plugins.virtualText().enable()
end

M.close = function()
   dap.repl.close()
   M.plugins.dapui().close()
   M.plugins.virtualText().disable()
end

local function config_breakpoint_sign()
   local dap_breakpoint = {
      error = {
         text = "",
         texthl = "LspDiagnosticsSignError",
         linehl = "",
         numhl = "",
      },
      rejected = {
         text = "",
         texthl = "LspDiagnosticsSignHint",
         linehl = "",
         numhl = "",
      },
      stopped = {
         text = "",
         texthl = "LspDiagnosticsSignInformation",
         linehl = "DiagnosticUnderlineInfo",
         numhl = "LspDiagnosticsSignInformation",
      },
   }

   vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
   vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
   vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
end

local function config_dapui_hooks()
   dap.listeners.after.event_initialized.dapui_config = M.open
   dap.listeners.before.event_terminated.dapui_config = M.close
   dap.listeners.before.event_exited.dapui_config = M.close
   dap.listeners.before.disconnect.dapui_config = M.close
end

local function config_debuggers()
   require "custom.dap.lldb"
   -- load from json file
   require("dap.ext.vscode").load_launchjs(nil, { cppdbg = { "cpp" } })
end

function M.setup()
   config_breakpoint_sign()
   config_dapui_hooks()
   config_debuggers() -- Debugger
end

return M
