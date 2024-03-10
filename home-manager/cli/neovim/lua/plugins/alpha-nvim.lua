return {
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")
            dashboard.section.header.val = {
                "わ",
                "お",
            }
            dashboard.section.buttons.val = {
                dashboard.button("f", "Find file", ":Telescope find_file<CR>"),
                dashboard.button("e", "New file", ":enew<CR>"),
                dashboard.button("q", "Exit", ":qa<CR>"),
            }
            local handle = io.popen("fortune")
            local fortune = handle:read("*a")
            handle:close()
            dashboard.section.footer.val = fortune
            dashboard.config.opts.noautocmd = true

            alpha.setup(dashboard.config)
        end,
    },
}
