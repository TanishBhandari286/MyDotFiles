-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Load custom highlights, I tried adding this as an autocommand, in the options.lua
-- file, also in the markdownl.lua file, but the highlights kept being overriden
-- so this is the only way I was able to make it work
require("config.highlights")
