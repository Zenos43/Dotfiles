return {

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    main = "ibl",
    config = function()
      vim.opt.list = true
      -- vim.opt.listchars:append("space:⋅")
      -- vim.opt.listchars:append("eol:↴")

      require("ibl").setup {
        exclude = {
          filetypes = { "help", "dashboard", "packer", "NvimTree", "Trouble", "trouble", "TelescopePrompt", "Float", "lazy", "mason", "notify", "snacks" },
          buftypes = { "terminal", "nofile", "telescope" },
        },
        indent = {
          char = "│",
		  tab_char = "│",
        },
		
		whitespace = { highlight = { "Whitespace", "NonText" } },
        scope = {
		char = "▎",
          enabled = true,
          show_start = true,
          show_end = false,
		  exclude = { language = { "lua" } },
        },
		
      }
	  -- disable indentation on the first level
local hooks = require("ibl.hooks")
hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
    end,
	
  },
}