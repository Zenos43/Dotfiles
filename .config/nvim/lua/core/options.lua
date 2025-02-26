local opt = vim.opt

vim.opt.encoding = "utf-8"
vim.opt.title = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.termguicolors = true
vim.opt.backup = false
vim.opt.fillchars:append { eob = " " }
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.opt.wildignore:append({ "*/node_modules/*" })

-- Session Management
opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
vim.bo.softtabstop = 2

-- highlight color for headlines.nvim 
vim.cmd([[highlight Headline1 guibg=#c5c5c5 guifg=#000000]])
vim.cmd([[highlight Headline2 guibg=#aeaeae guifg=#000000]])
vim.cmd([[highlight Headline3 guibg=#979797 guifg=#000000]])
vim.cmd([[highlight Headline4 guibg=#808080 guifg=#000000]])
vim.cmd([[highlight Headline5 guibg=#696969 guifg=#000000]])
vim.cmd([[highlight Headline6 guibg=#525252 guifg=#000000]])
vim.cmd([[highlight CodeBlock guibg=#3b3b3b]])
vim.cmd([[highlight Dash guibg=#202020 gui=bold]])

-- Line Wrapping
opt.wrap = false

-- search 
opt.hlsearch = true
opt.incsearch = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Appearance

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showmode = false
vim.diagnostic.config {
  float = { border = "rounded" }, -- add border to diagnostic popups
}

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Consider - as part of keyword
opt.iskeyword:append("-")

-- Disable the mouse while in nvim
opt.mouse = ""

-- Folding
opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()" -- Utilize Treesitter folds

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

if vim.fn.has("nvim-0.8") == 1 then
	vim.opt.cmdheight = 0
end