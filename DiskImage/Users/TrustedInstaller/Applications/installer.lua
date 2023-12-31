local colors    = _G.colors
local fs        = _G.fs
local http      = _G.http
local install   = _ENV.install
local os        = _G.os
local terminal  = _G.term

-- dbg

local function dbg_ln(string)
  local initial_color = terminal.getTextColor()
  terminal.setTextColor(colors.lightGray)
  terminal.write('[Rubikon]: ' .. string)

  local c_x, c_y = terminal.getCursorPos()
  terminal.setCursorPos(0, c_y + 1)
  terminal.setTextColor(initial_color)
end

local function dbg(string)
  local initial_color = terminal.getTextColor()
  terminal.setTextColor(colors.lightGray)
  terminal.write('[Rubikon]: ' .. string)

  terminal.setTextColor(initial_color)
end

-- warn

local function warn_ln(string)
  local initial_color = terminal.getTextColor()
  terminal.setTextColor(colors.yellow)
  terminal.write('[Rubikon]: ' .. string)

  local c_x, c_y = terminal.getCursorPos()
  terminal.setCursorPos(0, c_y + 1)
  terminal.setTextColor(initial_color)
end

local function warn(string)
  local initial_color = terminal.getTextColor()
  terminal.setTextColor(colors.yellow)
  terminal.write('[Rubikon]: ' .. string)

  terminal.setTextColor(initial_color)
end

-- err

local function err_ln(string)
  local initial_color = terminal.getTextColor()
  terminal.setTextColor(colors.red)
  terminal.write('[Rubikon]: ' .. string)

  local c_x, c_y = terminal.getCursorPos()
  terminal.setCursorPos(0, c_y + 1)
  terminal.setTextColor(initial_color)
end

local function err(string)
  local initial_color = terminal.getTextColor()
  terminal.setTextColor(colors.red)
  terminal.write('[Rubikon]: ' .. string)

  terminal.setTextColor(initial_color)
end

-- Initialize Terminal.

terminal.clear()
terminal.setCursorBlink(false)

dbg_ln('test')

-- Finalize Terminal.

terminal.setCursorBlink(true)
