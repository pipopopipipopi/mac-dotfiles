return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            shade_terminales = false,
        })

        local Terminal = require("toggleterm.terminal").Terminal
        local gitui = Terminal:new({
            cmd = "gitui",
            direction = "float",
            hidden = true,
        })

        function _gitui_toggle()
            gitui:toggle()
        end

        vim.keymap.set("n", "<Space>gu", ":lua _gitui_toggle()<cr>", { noremap = true, silent = true })
    end,
}
