local wezterm = require 'wezterm'

return {
  -- Default shell (e.g., fish, zsh)
  default_prog = { '/bin/zsh', '-l' },

  -- Font settings
  font = wezterm.font_with_fallback({
    "Fira Code",
    "Noto Color Emoji",
	  "Menlo"
  }),
  font_size = 16,

  -- Color scheme (see `wezterm color schemes`)
  color_scheme = "Dracula",

  -- Tab bar customization
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,

  -- Window padding
  window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 5,
  },
}
