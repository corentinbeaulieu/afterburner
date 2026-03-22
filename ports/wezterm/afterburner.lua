-- afterburner.lua / fogburn.lua
-- Place in your WezTerm config, or split into separate files and reference
-- with `color_scheme_dirs` + `color_scheme = "Afterburner"` / `"Fogburn"`

local wezterm = require("wezterm")

local M = {}

M.afterburner = {
  foreground    = "#E0E0E0",
  background    = "#0D0D0D",
  cursor_bg     = "#CC3F00",
  cursor_fg     = "#0D0D0D",
  cursor_border = "#CC3F00",
  selection_bg  = "#2A1500",
  selection_fg  = "#E0E0E0",

  ansi = {
    "#1A1A1A", -- black
    "#BA160C", -- red        (International Orange Engineering)
    "#5FBF7E", -- green
    "#E09B30", -- yellow
    "#4A8AB5", -- blue
    "#A07DE0", -- magenta
    "#4DBFA8", -- cyan
    "#C0C0C0", -- white
  },
  brights = {
    "#333333", -- bright black  (comments)
    "#E8352A", -- bright red
    "#7DDBA0", -- bright green
    "#FF4F00", -- bright yellow (International Orange Aerospace — keywords, prompt)
    "#8DCAEE", -- bright blue
    "#FF7A33", -- bright magenta (strings, paths)
    "#FFB380", -- bright cyan    (functions, names)
    "#FFFFFF", -- bright white
  },

  tab_bar = {
    background = "#0D0D0D",
    active_tab = {
      bg_color  = "#1A1A1A",
      fg_color  = "#FF4F00",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#0D0D0D",
      fg_color = "#444444",
    },
    inactive_tab_hover = {
      bg_color = "#1A1A1A",
      fg_color = "#666666",
    },
    new_tab = {
      bg_color = "#0D0D0D",
      fg_color = "#444444",
    },
    new_tab_hover = {
      bg_color = "#1A1A1A",
      fg_color = "#FF4F00",
    },
  },
}

-- Usage in your wezterm.lua:
--
--   local themes = require("afterburner")
--   config.colors = themes.afterburner

return M
