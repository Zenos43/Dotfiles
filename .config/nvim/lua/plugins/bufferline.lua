return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
		separator_style = { "|", "|" },
      	mode = "tabs",
		show_buffer_close_icons = false,
		show_close_icon = false,
		always_show_bufferline = false,
		show_tab_indicators = false,
		indicator = {style = "none" },
		offsets = { { text_align = "left", separator = true } },
		tab_size = 10,	
		color_icons = true,
		diagnostics = "nvim_lsp",
		offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
		},
		tab = {
                fg = "#2E5077",
                bg = "#2E5077",
        },
		
		
    },
  },
}
