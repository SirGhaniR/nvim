local oil = require("oil")
local telescope = require("telescope")
local builtin = require("telescope.builtin")
local smart_splits = require("smart-splits")
local spectre = require("spectre")

vim.keymap.set("n", "dr", function()
	vim.lsp.diagnostic._refresh(0)
end, { desc = "Refresh LSP diagnostics" })

vim.keymap.set("i", "jj", "<Esc>", { desc = "Escape to normal mode" })
vim.keymap.set("n", "<Esc>", "<Esc>:noh<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Split horizontally" })
vim.keymap.set("n", "<leader>sc", ":close<CR>", { desc = "Close split" })

vim.keymap.set("n", "<leader>cf", ":Format<CR>", { desc = "Code Format" })

vim.keymap.set("n", "<leader>ww", function()
	vim.opt_local.wrap = not vim.opt_local.wrap
	vim.opt_local.linebreak = true
end, { desc = "Toggle line wrap" })

-- Oil (Explorer)
vim.keymap.set("n", "<leader>e", oil.toggle_float, { desc = "Toggle Oil.nvim" })

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Bufferline
vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<leader>bd", ":bp | bd#<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "tn", ":tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "tp", ":tabp<CR>", { desc = "Prev tab" })

-- Neogit
vim.keymap.set("n", "<leader>ng", ":Neogit<CR>", { desc = "Show Neogit UI" })

-- Flutter
vim.keymap.set("n", "<leader>Ff", telescope.extensions.flutter.commands, { desc = "Open command Flutter" })

-- Splits
-- resizing splits
vim.keymap.set("n", "<A-h>", smart_splits.resize_left)
vim.keymap.set("n", "<A-j>", smart_splits.resize_down)
vim.keymap.set("n", "<A-k>", smart_splits.resize_up)
vim.keymap.set("n", "<A-l>", smart_splits.resize_right)

-- moving between splits
vim.keymap.set("n", "<C-h>", smart_splits.move_cursor_left)
vim.keymap.set("n", "<C-j>", smart_splits.move_cursor_down)
vim.keymap.set("n", "<C-k>", smart_splits.move_cursor_up)
vim.keymap.set("n", "<C-l>", smart_splits.move_cursor_right)
vim.keymap.set("n", "<C-\\>", smart_splits.move_cursor_previous)

-- swapping buffers between windows
vim.keymap.set("n", "<leader><leader>h", smart_splits.swap_buf_left)
vim.keymap.set("n", "<leader><leader>j", smart_splits.swap_buf_down)
vim.keymap.set("n", "<leader><leader>k", smart_splits.swap_buf_up)
vim.keymap.set("n", "<leader><leader>l", smart_splits.swap_buf_right)

-- Spectre (Search and Replace)
vim.keymap.set("n", "<leader>S", spectre.toggle, { desc = "Toggle Spectre" })
vim.keymap.set("n", "<leader>sw", function()
	spectre.open_visual({ select_word = true })
end, { desc = "Search current word" })
vim.keymap.set("v", "<leader>sw", spectre.open_visual, { desc = "Search current word" })
vim.keymap.set("n", "<leader>sp", function()
	spectre.open_file_search({ select_word = true })
end, { desc = "Search on current file" })
