-- LSP's languages configuration
require("user.lsp.config")
require("user.lsp.lua_ls")
require("user.lsp.stylelua_ls")
require("user.lsp.ts_ls")
require("user.lsp.css_ls")
require("user.lsp.clangd_ls")
require("user.lsp.emmet_ls")
require("user.lsp.tsgo_ls")
require("user.lsp.eslint_ls")
require("user.lsp.html_ls")
-- require("user.lsp.css-variables_ls")
require("user.lsp.css-modules_ls")
require("user.lsp.bash_ls")
require("user.lsp.docker_ls")
-- require("user.lsp.solitity_nomic_ls")
-- require("user.lsp.vscode-solidity_ls")
require("user.lsp.tailwind_ls")

vim.diagnostic.config({ virtual_text = true })
vim.lsp.enable({
	"lua_ls",
	"stylua",
	"eslint",
	"ts_ls",
	"clangd",
	"emmet_ls",
	"cssls",
	"html",
	"jsonls",
	"angularls",
	-- "css_variables",
	"cssmodules_ls",
	"bashls",
	"dockerls",
	"gh_actions_ls",
	"graphql",
	-- "solidity_ls_nomicfoundation",
	-- "solidity_ls",
	"tailwindcss",
})
