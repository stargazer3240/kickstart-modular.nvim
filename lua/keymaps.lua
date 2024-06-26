-- [[ Basic Keymaps ]]
--  See `:help map()`

local map = vim.keymap.set

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Quit
map("n", "<C-q>", "<cmd>q<cr>", { desc = "Quit" })

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Neotree keymaps
map({ "i", "n" }, "<C-e>", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neotree" })
map({ "i", "n" }, "<C-f>", "<cmd>Neotree focus<cr>", { desc = "Focus Neotree" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

map("n", "<leader>tt", "<cmd>TroubleToggle<cr>", { desc = "[T]rouble [T]oggle" })
map("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { desc = "[T]rouble [W]orkspace" })
map("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>", { desc = "[T]rouble [D]ocument" })
map("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", { desc = "[T]rouble [Q]uickfix" })
map("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>", { desc = "[T]rouble [L]oclist" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
