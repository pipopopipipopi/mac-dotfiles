return {
    {
        "nvim-telescope/telescope.nvim",
        event = "VimEnter",
        config = function()
            require("telescope").setup({
            })
        end,
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
    },

    {
        "nvim-telescope/telescope-frecency.nvim",
        event = "VeryLazy",
        config = function()
            require("telescope").load_extension("frecency")
        end,
    },
}
