vim.api.nvim_create_autocmd({ "TermOpen" }, {
    pattern = "*",
    callback = function()
        vim.api.nvim_command("startinsert")
        vim.api.nvim_command("setlocal norelativenumber")
        vim.api.nvim_command("setlocal nonumber")
    end,
    once = false,
})
