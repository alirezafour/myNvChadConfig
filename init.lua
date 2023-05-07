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

vim.cmd('autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.vert,*.frag,*.mcpp,*mhpp lua FormatBuffer()')

