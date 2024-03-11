vim.api.nvim_create_autocmd({ "TermOpen" }, {
    pattern = "*",
    callback = function()
        vim.cmd.startinsert()
        vim.cmd.setlocal(norelativenumber)
        vim.cmd.setlocal(nonumber)
    end,
    once = false,
})
