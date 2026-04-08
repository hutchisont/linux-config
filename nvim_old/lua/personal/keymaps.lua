-- I don't like the type of redo that default "U" does so I'm making it just do
-- the same redo as "ctrl-r"
vim.keymap.set("n", "U", vim.cmd.redo)
vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = 'Toggle UndoTree' })
-- switch based on wanting to use oil or netrw... having oil setup disables Ex by default it seems
vim.keymap.set("n", "<leader>pe", vim.cmd.Oil, { desc = 'Open Oil' })
-- vim.keymap.set("n", "<leader>pe", vim.cmd.Ex, { desc = 'Open Netrw' })
vim.keymap.set("n", "<leader>gh", vim.cmd.LspClangdSwitchSourceHeader, { desc = 'Clangd Switch Header/Source' })
-- this maybe should be in a config with fugitive?
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "[G]it blame" })

-- this perhaps should be with telescope?
vim.keymap.set('n', '<leader>ps', function()
  require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)
vim.keymap.set("n", "<leader>su", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = '[Su]bstitution on word under cursor' })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
--
-- Clear highlights on search with Esc in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
