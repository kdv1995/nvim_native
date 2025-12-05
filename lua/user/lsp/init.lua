-- LSP's languages configuration
require("user.lsp.lua_ls")
require("user.lsp.stylelua_ls")
require("user.lsp.ts_ls")
require("user.lsp.css_ls")
-- require("user.lsp.copilot_ls")
require("user.lsp.clangd_ls")
require("user.lsp.emmet_ls")
require("user.lsp.tsgo_ls")
require("user.lsp.eslint_ls")
-- require("user.lsp.config")

vim.diagnostic.config({ virtual_text = true })
vim.lsp.enable({ "lua_ls", "stylua", "ts_ls", "css_ls", "clangd",  "emmet_ls", "eslint" })
