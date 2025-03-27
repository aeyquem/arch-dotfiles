local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

config.enable_wayland = false

config.keys = {
  {
    key = 'v',
    mods = 'ALT|CTRL',
    action = act.PasteFrom 'Clipboard'
  },
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
