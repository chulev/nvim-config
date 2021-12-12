-- Global
-- vim.api.nvim_set_keymap('n', '<leader>qf', [["hyiw :silent grep! -swF "<C-r>h"<CR>]], { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<leader>qf', [["hy :silent grep! -sF "<C-r>h"<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']b', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[b', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qr', [[:cfdo %s/<C-r>h//g | update<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qu', ':cfdo u | write<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-l>', ':noh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', [[:%s///g<Left><Left>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>r', [[:%s///g<Left><Left>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rc', [[:%s///gc<Left><Left><Left>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>rc', [[:%s///gc<Left><Left><Left>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', ']o', 'o<Esc>', { noremap = true, silent = true }) 
vim.api.nvim_set_keymap('n', '[o', 'O<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>0', ":execute 'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>1', ':set list!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', ':set spell!<CR>', { noremap = true, silent = true })

--Telescope

vim.api.nvim_set_keymap('n', '<leader>s', ":lua live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', [["hyiw:lua live_grep()<CR><C-r>h]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<leader>f', [["hy:lua live_grep()<CR><C-r>h]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>p', ":lua require('telescope.builtin').fd()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require('telescope.builtin').buffers({ only_cwd = true })<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>m', ":lua require('telescope.builtin').marks()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>o', ":lua require('telescope.builtin').oldfiles()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>c', ":lua require('telescope.builtin').commands()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>v', ":lua require('telescope.builtin').vim_options()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>e', ":lua require('telescope').extensions.project.project({})<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>hc', ":lua require('telescope.builtin').command_history()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>hs', ":lua require('telescope.builtin').search_history()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>w', ":lua require('telescope.builtin').spell_suggest()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>lr', ":lua require('telescope.builtin').lsp_references()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ld', ":lua require('telescope.builtin').lsp_definitions()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>li', ":lua require('telescope.builtin').lsp_implementations()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>lt', ":lua require('telescope.builtin').lsp_type_definitions()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>lc', ":lua require('telescope.builtin').lsp_code_actions()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>lh', ":lua require('telescope.builtin').lsp_document_diagnostics()<CR>", {noremap = true, silent = true})

--nvim-tree
vim.api.nvim_set_keymap('n', '<leader>t', ":NvimTreeToggle<CR>", {noremap = true, silent = true})

--Git
vim.api.nvim_set_keymap('n', '<leader>g', ":LazyGit<CR>", {noremap = true, silent = true})

