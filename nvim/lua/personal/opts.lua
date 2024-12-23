-- vim.opt.softtabstop = 0
-- vim.opt.smartindent = true
-- vim.opt.expandtab = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 0 -- make << and >> for shifting an indent level use tabstop

vim.opt.cursorline = true

vim.opt.wrap = false

-- keeps cursor white, its turning some sort of light pink on me without it, not sure why
vim.opt.guicursor =
"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

vim.opt.nu = true
vim.opt.relativenumber = true

-- enable line numbers and relative numbers in netrw
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Save undo history
vim.o.undofile = true

vim.opt.incsearch = true

vim.opt.scrolloff = 10

vim.opt.colorcolumn = "80"

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 50
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
