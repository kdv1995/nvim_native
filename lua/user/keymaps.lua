local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local telescope_builtin = require("telescope.builtin")
local keymap = vim.keymap

--Remap space as leader key
keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NvimTree file explorer toggle
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Explorer" })
-- Save the current buffer
keymap.set("n", "<leader>w", "<cmd>w!<CR>", { desc = "Save" })
-- Quit Neovim without saving
keymap.set("n", "<leader>q", "<cmd>q!<CR>", { desc = "Quit" })
-- Remove search highlighting
keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "No Highlight" })

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation: helps us to move between windows with Ctrl + h/j/k/l; e.g. when veritcal or horizontal splits;
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-h>", "<C-w>h", opts)

-- Resize with arrows

keymap.set("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", opts) -- split
keymap.set("n", "<leader>o", ":source %<CR>", { desc = "Source current file" })

-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
-- keymap.set("n", "<C-j>", ":m .+1<CR>==", opts)
-- keymap.set("n", "<C-k>", ":m .-2<CR>==", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap.set("i", "jk", "<ESC>", opts)
keymap.set("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
-- keymap.set("v", "<", "<gv^", opts)
-- keymap.set("v", ">", ">gv^", opts)

-- keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
-- keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
-- keymap.set("v", "p", '"_dP', opts)
--
-- keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
-- keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope Buffers with dropdown, no preview
keymap.set("n", "<leader>f", telescope_builtin.find_files, { desc = "Telescope find files" })
keymap.set("n", "<leader>b", telescope_builtin.buffers, { desc = "Telescope buffers" })
keymap.set("n", "<leader>F", telescope_builtin.live_grep, { desc = "Telescope live grep" })

keymap.set("n", "<leader>fo", telescope_builtin.vim_options, { desc = "Lists vim options" })
keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "Telescope help tags" })
keymap.set("n", "<leader>fq", telescope_builtin.quickfix, { desc = "Telescope lsp document symbols" })
keymap.set("n", "<leader>to", telescope_builtin.vim_options, { desc = "Telescope global variable options" })
keymap.set("n", "<leader>gc", telescope_builtin.git_commits, { desc = "Telescope git commits" })
keymap.set("n", "<leader>gb", telescope_builtin.git_branches, { desc = "Telescope git branches" })
keymap.set("n", "<leader>gs", telescope_builtin.git_status, { desc = "Telescope git status" })
keymap.set("n", "<leader>tl", telescope_builtin.git_stash, { desc = "Telescope git stash" })
keymap.set("n", "<leader>fm", telescope_builtin.man_pages, { desc = "Man Pages" })
keymap.set("n", "<leader>cs", telescope_builtin.colorscheme, { desc = "Colorscheme" })
keymap.set("n", "<leader>fr", telescope_builtin.registers, { desc = "List the registers" })

keymap.set("n", "<leader>fc", telescope_builtin.commands, { desc = "Telescope list of commands" })

-- Packer commands
keymap.set("n", "<leader>pc", "<cmd>PackerCompile<cr>", { desc = "Packer Compile" })
keymap.set("n", "<leader>pi", "<cmd>PackerInstall<cr>", { desc = "Packer Install" })
keymap.set("n", "<leader>ps", "<cmd>PackerSync<cr>", { desc = "Packer Sync" })
keymap.set("n", "<leader>pS", "<cmd>PackerStatus<cr>", { desc = "Peacker Status" })
keymap.set("n", "<leader>pu", "<cmd>PackerUpdate<cr>", { desc = "Packer Update" })

-- Git commands with Gitsigns and Telescope
keymap.set("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { desc = "Lazygit" })
-- vim.keymap.set("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", { desc = "Next Hunk" })
-- vim.keymap.set("n", "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", { desc = "Prev Hunk" })
-- vim.keymap.set("n", "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", { desc = "Blame" })
-- vim.keymap.set("n", "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", { desc = "Preview Hunk" })
-- vim.keymap.set("n", "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", { desc = "Reset Hunk" })
-- vim.keymap.set("n", "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", { desc = "Reset Buffer" })
-- vim.keymap.set("n", "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", { desc = "Stage Hunk" })
-- vim.keymap.set("n", "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", { desc = "Undo Stage Hunk" })
-- LSP commands
-- keymap.set("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Code Action" })
-- keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.implementation()<cr>", { desc = "Code Action" })
-- keymap.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", { desc = "Type Defintion" })

-- keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename" })
keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", { desc = "Format Document" })

keymap.set("n", "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Document Diagnostics" })
keymap.set("n", "<leader>lw", "<cmd>Telescope diagnostics<cr>", { desc = "Workspace Diagnostics" })
keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "Info" })
keymap.set("n", "<leader>lI", "<cmd>LspInstallInfo<cr>", { desc = "Installer Info" })
keymap.set("n", "<leader>lj", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic" })
keymap.set("n", "<leader>lk", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", { desc = "Prev Diagnostic" })
keymap.set("n", "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", { desc = "CodeLens Action" })
keymap.set("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<cr>", { desc = "Quickfix" })

-- Terminal commands
keymap.set("n", "<leader>tn", "<cmd>lua _NODE_TOGGLE()<cr>", { desc = "Node" })
keymap.set("n", "<leader>tu", "<cmd>lua _NCDU_TOGGLE()<cr>", { desc = "NCDU" })
keymap.set("n", "<leader>tt", "<cmd>lua _HTOP_TOGGLE()<cr>", { desc = "Htop" })
keymap.set("n", "<leader>tp", "<cmd>lua _PYTHON_TOGGLE()<cr>", { desc = "Python" })
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Float" })
keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { desc = "Horizontal" })
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", { desc = "Vertical" })

-- Buf deletion
keymap.set("n", "<leader>d", "<cmd>:BufDel<CR>", { desc = "Delete Buffer" })

---- Search commands using Telescope
-- vim.keymap.set("n", "<leader>sb", "<cmd>Telescope git_branches<cr>", { desc = "Checkout Branch" })
-- vim.keymap.set("n", "<leader>sc", "<cmd>Telescope colorscheme<cr>", { desc = "Colorscheme" })
-- vim.keymap.set("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", { desc = "Find Help" })
-- vim.keymap.set("n", "<leader>sr", "<cmd>Telescope oldfiles<cr>", { desc = "Open Recent File" })
-- vim.keymap.set("n", "<leader>sR", "<cmd>Telescope registers<cr>", { desc = "Registers" })
-- vim.keymap.set("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
-- vim.keymap.set("n", "<leader>sC", "<cmd>Telescope commands<cr>", { desc = "Commands" })
