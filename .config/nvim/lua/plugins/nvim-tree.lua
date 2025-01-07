-- File Explorer / Tree
return {
  -- https://github.com/nvim-tree/nvim-tree.lua
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    -- https://github.com/nvim-tree/nvim-web-devicons
    'nvim-tree/nvim-web-devicons', -- Fancy icon support
  },
  opts = {
    actions = {
      open_file = {
	  quit_on_open = true,
        window_picker = {
          enable = false
        },
      }
    },
	hijack_cursor = true,
	view = {
        width = 35,
        relativenumber = false,
		centralize_selection = true,
      },
      -- change folder arrow icons
      renderer = {
		highlight_git = true,
        indent_markers = {
          enable = true,
        },
        icons = {
		  show = {
             folder_arrow = false,
                    },
			 git_placement = 'after',
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
			  default = '',
              open = '',
              empty = '',
              empty_open = '',
            },
          },
        },
      },
	    diagnostics = {
                enable = true,
            },
			 modified = {
                enable = true,
            },
	 filters = {
        custom = { ".DS_Store" , ".git" , ".wslconfig" },
      },
      git = {
        ignore = false,
      },
  },
  config = function (_, opts)
    -- Recommended settings to disable default netrw file explorer
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup(opts)
  end
}

