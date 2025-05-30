-- function to find the path to the Node.js executable
-- took from https://github.com/esmuellert/nvim-eslint/blob/main/lua/nvim-eslint/init.lua
local function find_node()
  local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
  local command = is_windows and 'where.exe node' or 'which node'

  -- Run the appropriate command to get the Node.js path
  local result = vim.fn.system(command)

  -- Trim trailing newline character(s)
  result = result:gsub("\r\n$", ""):gsub("\n$", "")

  -- Handle errors if the command fails
  if vim.v.shell_error ~= 0 then
    print("Error: Could not find Node.js path. ESlint server will use default path.")
    return nil
  end

  return result
end

return find_node
