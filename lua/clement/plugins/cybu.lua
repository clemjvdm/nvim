return {
    "ghillb/cybu.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local cybu = require("cybu")
        cybu.setup({
            style = {
                path = "tail",
            }
        })
        vim.keymap.set("n", "L", "<Plug>(CybuPrev)")
        vim.keymap.set("n", "K", "<Plug>(CybuNext)")
    end,

}
