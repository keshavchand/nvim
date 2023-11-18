-- create mapping
-- set leader
vim.g.mapleader = ','

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set({'n', 'v'}, '<tab>', '%')
vim.keymap.set('n', '<leader><CR>', ':nohl<CR>')
