local colors = require("blarkDue.colors").setup({ transform = true })
local config = require("blarkDue.config").options

local blarkDue = {}

blarkDue.normal = {
  a = { bg = colors.mode_normal, fg = colors.white, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.white },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

blarkDue.insert = {
  a = { bg = colors.mode_insert, fg = colors.black, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

blarkDue.command = {
  a = { bg = colors.mode_command, fg = colors.black, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.orange },
}

blarkDue.visual = {
  a = { bg = colors.mode_visual, fg = colors.white, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

blarkDue.replace = {
  a = { bg = colors.mode_replace, fg = colors.white, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.white },
}

blarkDue.terminal = {
  a = { bg = colors.fg, fg = colors.black, gui = "bold" },
  b = { bg = colors.fg_gutter, fg = colors.white },
}

blarkDue.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

if config.lualine_bold then
  for _, mode in pairs(blarkDue) do
    mode.a.gui = "bold"
  end
end

return blarkDue
