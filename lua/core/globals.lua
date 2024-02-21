local global = {}

-- global functions

--@param msg string
--@param level number
--@return nil
--@usage
--global.notify("hello", vim.log.levels.WARN)
function global.notify(msg, level) vim.notify(msg, level, { title = "Lax" }) end

function global:load_variables()
   self.vim_path = vim.fn.stdpath "config"
   self.cache_dir = vim.fn.stdpath "cache"
   self.data_dir = string.format("%s/site/", vim.fn.stdpath "data")
   self.colorscheme = "slate"
end

global:load_variables()

return global
