local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = true,
  scrolloff = 8,
  sidescrolloff = 8,
  guifont = "Mononoki Nerd Font:h17"
}
vim.opt.shortmess:append "c"

for k , v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.opt.iskeyword:append "-"
vim.opt.formatoptions:remove({"c","r","o"})
