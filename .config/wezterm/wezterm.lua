local wezterm = require 'wezterm'

return {
  default_prog = { '/bin/zsh' },
  font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true }),
  font_size = 12,
  color_scheme = 'Catppuccin Frappe',
  window_frame = {
    font_size = 12.0
  },
  tab_bar_at_bottom = true,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
}
