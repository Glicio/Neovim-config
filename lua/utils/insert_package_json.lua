local root_maker_with_fields = require("utils.root_maker_with_fields")
local function insert_package_json(root_files, field, fname)
  return root_maker_with_fields(root_files, { 'package.json', 'package.json5' }, field, fname)
end

return insert_package_json
