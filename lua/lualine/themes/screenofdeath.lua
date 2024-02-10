local colors = require("screenofdeath.colors").setup({ transform = true })
local config = require("screenofdeath.config").options

local screenofdeath = {}

screenofdeath.normal = {
  a = { bg = colors.mode_normal, fg = colors.white, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.white },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

screenofdeath.insert = {
  a = { bg = colors.mode_insert, fg = colors.black, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

screenofdeath.command = {
  a = { bg = colors.mode_command, fg = colors.black, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.orange },
}

screenofdeath.visual = {
  a = { bg = colors.mode_visual, fg = colors.white, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

screenofdeath.replace = {
  a = { bg = colors.mode_replace, fg = colors.white, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.white },
}

screenofdeath.terminal = {
  a = { bg = colors.fg, fg = colors.black, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.white },
}

screenofdeath.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

if config.lualine_bold then
  for _, mode in pairs(screenofdeath) do
    mode.a.gui = "bold"
  end
end

return screenofdeath
