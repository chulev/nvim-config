-- vim.cmd([[
-- augroup packer_user_config
--   autocmd!
--   autocmd BufWritePost plugins.lua source <afile> | PackerCompile
-- augroup end
-- ]])

-- vim.cmd([[
-- augroup quickfix
--   autocmd!
--   autocmd QuickFixCmdPost *grep* cwindow
-- augroup END
-- ]])

vim.cmd([[
  au TextYankPost * lua vim.highlight.on_yank { higroup="IncSearch", timeout=150, on_visual=true }
]])

vim.cmd([[
  au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]])

vim.cmd([[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]])
-- vim.cmd([[autocmd CursorHoldI * silent! lua vim.lsp.buf.hover()]])
