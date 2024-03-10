return {
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        config = function()
            local theme = require("alpha.themes.dashboard")

            local config = theme.config
            local button = require("alpha.themes.dashboard").button
            local buttons = {
                type = "group",
                val = {
                    { type = "text", val = "Quick links", opts = { h1 = "SpecialComment", position = "center" } },
                    { type = "padding", val = 1 },
                    button("f", "Find file", "<cmd>Telescope find_files<cr>"),
                    button("q", "Exit", "<cmd>qa<cr>"),
                },
                position = "center",
            }
            config.layout[6] = buttons
            return config
        end,
    },
}
