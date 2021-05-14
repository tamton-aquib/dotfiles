-- DATA_PATH = vim.fn.stdpath('data')
-- 
-- require'lspconfig'.tsserver.setup {
--     cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},
--     filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
--     root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
--     settings = {documentFormatting = false},
-- }
-- 
-- 
-- require'lspconfig'.rls.setup{}
-- 
-- require'lspconfig'.cssls.setup{}

require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end
