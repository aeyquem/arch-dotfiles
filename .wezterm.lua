local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

config.enable_wayland = false

config.keys = {
  {
    key = 'v',
    mods = 'SHIFT|CTRL',
    action = act.PasteFrom 'Clipboard'
  },
  -- window management
  {
    key = 'n',
    mods = 'ALT',
    action = act.ActivateTabRelative(-1)
  },
  {
    key = 'i',
    mods = 'ALT',
    action = act.ActivateTabRelative(1)
  },
  -- pane management
  {
    key = 'h',
    mods = 'ALT|CTRL',
    action = act.SplitHorizontal{ domain =  'CurrentPaneDomain' },
  },
  {
    key = 'v',
    mods = 'ALT|CTRL',
    action = act.SplitVertical{ domain =  'CurrentPaneDomain' },
  },
  { key = 'n', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Left' },
  { key = 'e', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Down' },
  { key = 'o', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Up' },
  { key = 'i', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Right' },
}

config.color_scheme = 'Catppuccin Frappe'
-- config.font = wezterm.font 'FiraCodeNerdFont'
-- config.font = wezterm.font 'TerminessNerdFont'
-- config.font_size = 12

config.default_prog = { '/usr/bin/fish', '-l' }

config.font = wezterm.font_with_fallback {
  'FiraCodeNerdFont',
  'Font Awesome 6 Free',
}

return config
