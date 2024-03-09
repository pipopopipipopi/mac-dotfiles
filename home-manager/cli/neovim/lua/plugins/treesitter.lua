return {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    config = function()
        vim.opt.runtimepath:append("@treesitter_parsers@")
        require("nvim-treesitter.configs").setup({
            auto_install = false,
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })
    end,
}
