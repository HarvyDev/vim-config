return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        rosepine = require("rose-pine")

        rosepine.setup({
            disable_background = true,
            
            styles = {
                bold = true,
                italic = false,
                transparency = true,
            },
        })

        vim.cmd("colorscheme rose-pine")
    end
}
