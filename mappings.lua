---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}
-- debuging keybing for dap
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line.",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger.",
    }
  }
}

M.nvimtree = {
  plugin = true,
  n = {
    ["<leader>e"] = {
      "<cmd> NvimTreeToggle <CR>",
      "toggle nvimtree."
    }
  }
}

-- more keybinds!

return M
