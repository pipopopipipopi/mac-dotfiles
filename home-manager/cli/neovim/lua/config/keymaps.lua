--ESC*2 nohlsearch
vim.keymap.set("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", opts)

--jj ESC
vim.keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true })

vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })
