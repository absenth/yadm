return
{
    "snooting/sotd.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "b0o/schemastore.nvim",
    },
    config = function()
        require("sotd").setup({
            -- Optional: override default configuration
            den_file = vim.fn.expand("~/.config/sotd/den.json"),
            log_file = vim.fn.expand("~/.config/sotd/sotd.log"),
            logging_enabled = true,
            preshave_number = 0,
            post_number = 2,
        })
    end,
    -- Optional: Add keymaps
    keys = {
        { "<leader>sc", "<cmd>SOTDCreate<cr>", desc = "Create SOTD Post" },
    },
}
