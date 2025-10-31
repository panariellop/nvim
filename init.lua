-- Keymaps
vim.g.mapleader=" "
vim.g.maplocalleader = " "
-- Bootstrap lazy.nvim
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

-- Load configuration
require("config.lazy")
require("custom.keymaps")
require("custom.settings")

-- Colorscheme
vim.schedule(function()
  vim.cmd.colorscheme('everforest')
end)

