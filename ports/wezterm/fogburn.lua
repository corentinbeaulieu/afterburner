-- afterburner.lua / fogburn.lua
-- Place in your WezTerm config, or split into separate files and reference
-- with `color_scheme_dirs` + `color_scheme = "Afterburner"` / `"Fogburn"`

local wezterm = require("wezterm")

local M = {}

M.fogburn = {
  foreground    = "#2A2218",
  background    = "#F5F0EB",
  cursor_bg     = "#A33200",
  cursor_fg     = "#F5F0EB",
  cursor_border = "#A33200",
  selection_bg  = "#EDE5DC",
  selection_fg  = "#2A2218",

  ansi = {
    "#EDE5DC", -- black        (surface)
    "#BA160C", -- red          (International Orange Engineering)
    "#2E7D4F", -- green
    "#9A6A10", -- yellow
    "#2A6A9A", -- blue
    "#7058C0", -- magenta
    "#2D8C7A", -- cyan
    "#5A5248", -- white
  },
  brights = {
    "#9A9088", -- bright black  (comments)
    "#D4352A", -- bright red
    "#3E9E64", -- bright green
    "#C94000", -- bright yellow (International Orange Aerospace — keywords, prompt)
    "#3A7AB5", -- bright blue
    "#D45A00", -- bright magenta (strings, paths)
    "#B87040", -- bright cyan    (functions, names)
    "#2A2218", -- bright white   (inverted — bold fg on light bg)
  },

  tab_bar = {
    background = "#EDE5DC",
    active_tab = {
      bg_color  = "#F5F0EB",
      fg_color  = "#C94000",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#EDE5DC",
      fg_color = "#9A9088",
    },
    inactive_tab_hover = {
      bg_color = "#F5F0EB",
      fg_color = "#5A5248",
    },
    new_tab = {
      bg_color = "#EDE5DC",
      fg_color = "#9A9088",
    },
    new_tab_hover = {
      bg_color = "#F5F0EB",
      fg_color = "#C94000",
    },
  },
}

-- Usage in your wezterm.lua:
--
--   local themes = require("fogburn")
--   config.colors = themes.fogburn

return M

