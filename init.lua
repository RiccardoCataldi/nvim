-- Set leader key to space
vim.g.mapleader = " "

vim.opt.termguicolors = true

-- Map ? to go to end of line (replaces backward search)
vim.keymap.set('n', '?', '$', { desc = 'Go to end of line' })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ { import = "plugins" } })
