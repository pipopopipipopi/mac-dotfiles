return {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    config = function()
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
