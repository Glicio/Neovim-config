-- typescript-language-server.lua
return {
  cmd = {'typescript-language-server', '--stdio'},
  filetypes = {'typescript', 'typescriptreact', 'javascript', 'javascriptreact', 'json'},
  root_markers = {'package.json', 'tsconfig.json'},
}
