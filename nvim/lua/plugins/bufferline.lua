-- bufferline
require("bufferline").setup({
    options = {
        indicator = {
        },
        diagnostics = false, -- nvim_lsp or coc
        separator_style = "thin",
        max_name_length = 18,
        max_prefix_length = 15, 
        show_tab_indicators = true,
        always_show_bufferline = true,
    },
})