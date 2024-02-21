-- Source config files
for _, source in ipairs {
   "core.options",
   "core.globals",
   "util.lazy",
} do
   local status_ok, fault = pcall(require, source)
   if not status_ok then
      vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
   end
end

local g = require "core.globals"

if g.colorscheme then
   if not pcall(vim.cmd.colorscheme, g.colorscheme) then
      require("base.utils").notify(
         "Error setting up colorscheme: " .. g.colorscheme,
         vim.log.levels.ERROR
      )
   end
end
