--[[
  The Rubikon bootloader.
  Willow Bracker 2023.

  TODOS = [
    TODO(Pull a default RKLDR.OPTS from github?, Line 25)
  ]
]]

local colors   = _G.colors
local fs       = _G.fs
local keys     = _G.keys
local os       = _G.os
local settings = _G.settings
local terminal = _G.term
local txtutils = _G.textutils

-- Halt booting and print an error message for the user.

local function critical_error(error_string)
  local width, height = terminal.current.getSize()
  terminal.setBackgroundColor(colors.red)
  terminal.setTextColor(colors.white)
  terminal.setCursorPos((width - #error_string) / 2, height / 2)
end

-- Load all of the boot options.

local function load_boot_options()
  -- Throw an error after checking CompiledHives.
  if not fs.exists('Hives/SystemHive/RKLDR.OPTS') and not fs.exists('CompiledHives/SystemHive/RKLDR.OPTS')
    critical_error('RKLDR_CONFIG_MISSING')
  end
end
