-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.font =
    wezterm.font 'JetBrains Mono', { weight = 'Regular', italic = false }
--    wezterm.font 'IBM plex mono', { weight = 'Regular', italic = false }
--    wezterm.font 'Fira Code', { weight = 'Regular', italic = false }
--    wezterm.font 'Liga Comic Mono', { weight = 'Normal', italic = false }

-- For example, changing the color scheme:
config.default_prog = { '/usr/local/bin/zsh' }
config.font_size = 14

-- Configure the Window parameters:
config.color_scheme_dirs = { '~/.config/wezterm/colors' }
config.color_scheme = 'Kasugano (terminal.sexy)'
config.tab_bar_at_bottom = true
config.window_close_confirmation = 'NeverPrompt'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.initial_rows = 130
config.initial_cols = 74

-- Configure transparency
config.window_background_opacity = 1.0


-- Configure Hyperlink Rules
config.hyperlink_rules = {
  -- Matches: a URL in parens: (URL)
  {
    regex = '\\((\\w+://\\S+)\\)',
    format = '$1',
    highlight = 1,
  },
  -- Matches: a URL in brackets: [URL]
  {
    regex = '\\[(\\w+://\\S+)\\]',
    format = '$1',
    highlight = 1,
  },
  -- Matches: a URL in curly braces: {URL}
  {
    regex = '\\{(\\w+://\\S+)\\}',
    format = '$1',
    highlight = 1,
  },
  -- Matches: a URL in angle brackets: <URL>
  {
    regex = '<(\\w+://\\S+)>',
    format = '$1',
    highlight = 1,
  },
  -- Then handle URLs not wrapped in brackets
  {
    regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
    format = '$0',
  },
  -- implicit mailto link
  {
    regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
    format = 'mailto:$0',
  },
}

-- and finally, return the configuration to wezterm
return config
