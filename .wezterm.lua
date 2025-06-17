local wezterm = require 'wezterm'
local act = wezterm.action

return {
  default_prog = { '/bin/zsh', '-l' },
  font_size = 16,
  color_scheme = 'Catppuccin Mocha',
  hide_tab_bar_if_only_one_tab = true,
  default_cursor_style = "BlinkingBar",
  cursor_blink_rate = 500,
  window_padding = {
    left = 18,
    right = 18,
    top = 20,
  },
  
  disable_default_key_bindings = true,
  keys = {
    -- Pane Creation ------------------------------------------------------
    { key = "|", mods = "CTRL|SHIFT", action = act.SplitVertical { domain = "CurrentPaneDomain" } }, -- Vertical split (Shift+\)
    { key = "_", mods = "CTRL|SHIFT", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } }, -- Horizontal split (Shift+-)

    -- Pane Deletion ------------------------------------------------------
    { key = "x", mods = "CTRL|SHIFT", action = act.CloseCurrentPane { confirm = true } }, -- Close current pane
    { key = "X", mods = "CTRL|SHIFT", action = act.CloseCurrentPane { confirm = false } }, -- Force close pane (no confirm)

    -- Pane Navigation ----------------------------------------------------
    { key = "h", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection "Left" }, -- Left pane
    { key = "j", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection "Down" }, -- Down pane
    { key = "k", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection "Up" }, -- Up pane
    { key = "l", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection "Right" }, -- Right pane

    -- Pane Resizing ------------------------------------------------------
    { key = "LeftArrow",  mods = "CTRL|SHIFT", action = act.AdjustPaneSize { "Left", 1 } },
    { key = "RightArrow", mods = "CTRL|SHIFT", action = act.AdjustPaneSize { "Right", 1 } },
    { key = "UpArrow",    mods = "CTRL|SHIFT", action = act.AdjustPaneSize { "Up", 1 } },
    { key = "DownArrow",  mods = "CTRL|SHIFT", action = act.AdjustPaneSize { "Down", 1 } },

    -- Pane Zoom/Focus ----------------------------------------------------
    { key = "z", mods = "CTRL|SHIFT", action = act.TogglePaneZoomState }, -- Zoom/unzoom pane
    { key = "f", mods = "CTRL|SHIFT", action = act.ToggleFullScreen }, -- Fullscreen current pane

    -- Essential Operations -----------------------------------------------
    { key = "r", mods = "CTRL|SHIFT", action = act.ReloadConfiguration }, -- Reload config
    { key = "c", mods = "CTRL|SHIFT", action = act.CopyTo "Clipboard" }, -- Copy
    { key = "v", mods = "CTRL|SHIFT", action = act.PasteFrom "Clipboard" }, -- Paste

    -- Font Size Adjustments (New Additions) ------------------------------
    { key = "[", mods = "CTRL|SHIFT", action = act.DecreaseFontSize },  -- Decrease font size (CTRL+SHIFT+[)
    { key = "]", mods = "CTRL|SHIFT", action = act.IncreaseFontSize },  -- Increase font size (CTRL+SHIFT+])
    { key = "0", mods = "CTRL|SHIFT", action = act.ResetFontSize }, -- Reset font size (CTRL+SHIFT+0)
  }
}
