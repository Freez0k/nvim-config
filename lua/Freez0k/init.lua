require "Freez0k.remap"
require "Freez0k.options"
-- vim.cmd.colorscheme "palenight"
vim.cmd[[colorscheme tokyonight-night]]
-- vim.cmd.colorscheme "catppuccin-mocha"
-- vim.cmd.colorscheme "kanagawa-wave"
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.opt.guifont="Meslo LGMDZ Nerd Font"

require("git-blame-line").setup({
    git = {
        default_message = 'Not committed yet',
        blame_format = '%an - %ar - %s' -- see https://git-scm.com/docs/pretty-formats
    },
    view = {
        left_padding_size = 5,
        enable_cursor_hold = false
   }
})
