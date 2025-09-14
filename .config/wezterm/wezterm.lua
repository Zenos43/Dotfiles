-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Spawn a pwsh shell in login mode
config.default_prog = { "pwsh.exe", "-NoLogo" } -- Using Powershell as default shell

-- Launch size startup

config.initial_cols = 140
config.initial_rows = 40

-- Disable ligatures
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- tab bar
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false -- Disable fancy tabbar
config.tab_and_split_indices_are_zero_based = true
config.scrollback_lines = 10000
config.font = wezterm.font_with_fallback({
	{ family = "JetBrainsMono Nerd Font", weight = "Bold", italic = true },
	{ family = "Symbols Nerd Font Mono", weight = "Regular" },
})
warn_about_missing_glyphs = false
config.font_size = 10
config.enable_tab_bar = false -- Disable tab bar
config.window_decorations = "RESIZE" -- Hide window title
config.window_background_opacity = 0.4
config.win32_system_backdrop = "Acrylic"
--config.macos_window_background_blur = 10

-- Config keymapping for wezterm
config.keys = {
	{
		key = "f",
		mods = "ALT",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "m",
		mods = "ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "RightArrow",
		mods = "CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Next" }),
	},
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "LeftArrow",
		mods = "CTRL",
		action = wezterm.action({ ActivatePaneDirection = "Prev" }),
	},
	{
		key = "n",
		mods = "ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "UpArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "LeftArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "DownArrow",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
	},
	{
		key = "UpArrow",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key = "LeftArrow",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
	},
	{
		key = "RightArrow",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
	},
}

-- mouse config: drag window with holding ctrl-shift
config.mouse_bindings = {
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "CTRL|SHIFT",
		action = wezterm.action.StartWindowDrag,
	},
}

-- Config tab view
wezterm.on("update-right-status", function(window, pane)
	local date = wezterm.strftime("%Y-%m-%d %H:%M:%S")

	-- Make it italic and underlined
	window:set_right_status(wezterm.format({
		{ Text = date .. " " },
	}))
end)

-- window padding
config.window_padding = {
	left = "0.5cell",
	right = "0.5cell",
	top = 0,
	bottom = 0,
}

-- my custom colorscheme:
config.colors = {
	foreground = "#DCDFE4",
	background = "#001B26",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#E3CCCC", "#61AFEF", "#56B6C2", "#98C379", "#C678DD", "#E06C75", "#DCDFE4", "#E5C07B" },
	brights = { "#A3C9D1", "#61AFEF", "#56B6C2", "#98C379", "#C678DD", "#E06C75", "#DCDFE4", "#E5C07B" },
}

-- and finally, return the configuration to wezterm
return config
