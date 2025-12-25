return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#222222", -- Default background
                base01 = "#666666", -- Lighter background (status bars)
                base02 = "#e5c47b", -- Selection background
                base03 = "#666666", -- Comments, invisibles
                base04 = "#c2c2b0", -- Dark foreground
                base05 = "#c2c2b0", -- Default foreground
                base06 = "#d7c483", -- Light foreground
                base07 = "#ffffff", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#b96f6f", -- Variables, errors, red
                base09 = "#685742", -- Integers, constants, orange
                base0A = "#b36d43", -- Classes, types, yellow
                base0B = "#5f875f", -- Strings, green
                base0C = "#c9a554", -- Support, regex, cyan
                base0D = "#78824b", -- Functions, keywords, blue
                base0E = "#bb7744", -- Keywords, storage, magenta
                base0F = "#b36d43", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
