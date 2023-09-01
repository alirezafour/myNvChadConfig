require("custom.chadrc")
require('custom.configs.overrides')
require 'base46'
-- local autocmd = vim.api.nvim_create_autocmd
vim.wo.relativenumber = true
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
function FormatBuffer()
  if vim.bo.modified and vim.fn.empty(vim.fn.findfile('.clang-format', vim.fn.expand('%:p:h') .. ';')) == 0 then
    local cursor_pos = vim.fn.getpos('.')
    vim.cmd('%!clang-format')
    vim.fn.setpos('.', cursor_pos)
  end
end

vim.cmd('autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.vert,*.frag,*.mcpp,*mhpp,*ixx lua FormatBuffer()')

-- Determine the appropriate shell (pwsh if available, otherwise powershell)
local shell = vim.fn.executable('pwsh') == 1 and 'pwsh' or 'powershell'

-- Set the shell and related options
vim.opt.shell = shell
vim.opt.shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[\'Out-File:Encoding\']=\'utf8\';'
vim.opt.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
vim.opt.shellpipe = '2>&1 | %%{ "$_" } | Tee-Object %s; exit $LastExitCode'
vim.opt.shellquote = ''
vim.opt.shellxquote = ''

