return {
-- animations
{
  "echasnovski/mini.animate",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.scroll = {
      enable = false,
    }
  end,
},
	{
		"folke/snacks.nvim",
		opts = {
			dashboard = {
				preset = {
					header = [[
	███████╗███████╗███╗   ██╗ ██████╗ ███████╗⚡
	╚══███╔╝██╔════╝████╗  ██║██╔═══██╗██╔════╝⚡
	  ███╔╝ █████╗  ██╔██╗ ██║██║   ██║███████╗⚡
	 ███╔╝  ██╔══╝  ██║╚██╗██║██║   ██║╚════██║⚡
	███████╗███████╗██║ ╚████║╚██████╔╝███████║⚡
	╚══════╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝ 
   ]],
				},
			},
		},
	},
}
