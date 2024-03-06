vim.loader.enable()

require("config.options")

require("lazy").setup {
	import = "plugins",
}

require("config.colorscheme")
require("config.keymaps")
