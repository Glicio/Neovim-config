local function find_root_dir()
	print("find_root_dir")
  local root_files = {
    ".eslintrc",
    ".eslintrc.js",
    ".eslintrc.json",
    "eslint.config.js",
    "package.json",
    ".git",
  }

  -- Use vim.fn.getcwd() to get the current working directory
  local cwd = vim.fn.getcwd()

  local function is_root(dir)
    for _, file in ipairs(root_files) do
      if vim.fn.filereadable(vim.fn.expand(dir .. "/" .. file)) == 1 then
        return true
      end
    end
    return false
  end

  local dir = cwd
  while dir do
    if is_root(dir) then
			vim.notify("Found root directory: " .. dir, vim.log.levels.INFO)
      return dir
    end
    local parent = vim.fn.fnamemodify(dir, ":h")
    if parent == dir then
      break -- Reached the filesystem root
    end
    dir = parent
  end

  vim.notify("No root directory found. Falling back to " .. cwd, vim.log.levels.WARN)
  return cwd -- Fallback
end

return find_root_dir
