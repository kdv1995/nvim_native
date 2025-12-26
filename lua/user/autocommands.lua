vim.cmd([[
augroup _general_settings
autocmd!
autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
autocmd BufWinEnter * :set formatoptions-=cro
autocmd FileType qf set nobuflisted
augroup end

augroup _git
autocmd!
autocmd FileType gitcommit setlocal wrap
autocmd FileType gitcommit setlocal spell
augroup end

augroup _markdown
autocmd!
autocmd FileType markdown setlocal wrap
autocmd FileType markdown setlocal spell
augroup end

augroup _auto_resize
autocmd!
autocmd VimResized * tabdo wincmd =
augroup end

augroup _alpha
autocmd!
autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
augroup end



]])

vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		require("nvim-tree.api").tree.open()
	end,
})

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
	group = vim.api.nvim_create_augroup("AutoSave", { clear = true }),
	callback = function()
		if vim.bo.readonly then
			return
		end
		if vim.fn.filereadable(vim.fn.bufname("%")) ~= 1 then
			return
		end
		if vim.bo.filetype == "gitcommit" or vim.bo.filetype == "help" then
			return
		end

		vim.cmd("silent update")
	end,
	desc = "Auto-save on InsertLeave and TextChanged",
})
