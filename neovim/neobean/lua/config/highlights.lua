-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/config/highlights.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/config/highlights.lua

local colors = require("config.colors").load_colors()

local color1_bg = colors["linkarzu_color04"]
local color2_bg = colors["linkarzu_color02"]
local color3_bg = colors["linkarzu_color03"]
local color4_bg = colors["linkarzu_color01"]
local color5_bg = colors["linkarzu_color05"]
local color6_bg = colors["linkarzu_color08"]
local color_fg = colors["linkarzu_color07"]

vim.cmd(
  string.format([[highlight @markup.heading.1.markdown cterm=bold gui=bold guifg=%s guibg=%s]], color_fg, color1_bg)
)
vim.cmd(
  string.format([[highlight @markup.heading.2.markdown cterm=bold gui=bold guifg=%s guibg=%s]], color_fg, color2_bg)
)
vim.cmd(
  string.format([[highlight @markup.heading.3.markdown cterm=bold gui=bold guifg=%s guibg=%s]], color_fg, color3_bg)
)
vim.cmd(
  string.format([[highlight @markup.heading.4.markdown cterm=bold gui=bold guifg=%s guibg=%s]], color_fg, color4_bg)
)
vim.cmd(
  string.format([[highlight @markup.heading.5.markdown cterm=bold gui=bold guifg=%s guibg=%s]], color_fg, color5_bg)
)
vim.cmd(
  string.format([[highlight @markup.heading.6.markdown cterm=bold gui=bold guifg=%s guibg=%s]], color_fg, color6_bg)
)
