local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config("html", {
	capabilities = capabilities,
})

vim.lsp.config("cssls", {
	capabilities = capabilities,
})

vim.lsp.config("jsonls", {
	capabilities = capabilities,
})

local base_on_attach = vim.lsp.config.eslint.on_attach
vim.lsp.config("eslint", {
	on_attach = function(client, bufnr)
		if not base_on_attach then
			return
		end

		base_on_attach(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "LspEslintFixAll",
		})
	end,
})

vim.lsp.config("angularls", {
	cmd = cmd,
})

vim.lsp.config("dockerls", {
	settings = {
		docker = {
			languageserver = {
				formatter = {
					ignoreMultilineInstructions = true,
				},
			},
		},
	},
})

-- vim.lsp.config('sqls', {
--   cmd = {"path/to/command", "-config", "path/to/config.yml"};
--   ...
-- })
