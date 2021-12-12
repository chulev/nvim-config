vim.g.mapleader = ' '

vim.cmd('colorscheme codedark')

vim.o.grepprg = 'rg --vimgrep'
vim.o.hidden = true
vim.o.undodir = '~/.vim_runtime/temp_dirs/undodir'
vim.o.undofile = true
vim.o.updatetime = 1000
vim.g.updatetime = 1000
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.fileformat = 'unix'
vim.o.tabstop = 2
vim.o.spelllang = 'en'
vim.o.softtabstop = 2
vim.o.swapfile = false
vim.o.undofile = false
vim.o.expandtab = true
vim.o.shiftwidth = 2

vim.api.nvim_set_option('listchars', 'eol:↵,trail:~,tab:>-,nbsp:␣')
